class ExpensesController < ApplicationController

  def index

  	transaction_type = params["transaction_type"]
  	category = params[:category]

  	if transaction_type && !category
  		@expenses = Expense.joins(:transaction_type).where("transaction_types.name = ?", transaction_type.capitalize)
  	elsif category && !transaction_type
  		@expenses = Expense.joins(:category).where("categories.name = ?", category.capitalize)
  	elsif category && transaction_type
  		@expenses = Expense.joins(:transaction_type, :category).where("transaction_types.name = ? AND categories.name = ?",
  		transaction_type.capitalize, category.capitalize)
  	else
  		@expenses = Expense.all
  	end

  	@transaction_types = TransactionType.all
  	@category = Category.all

  	respond_to do |format|
  		format.html { render :index}
  		format.json { render json: @expenses, status: :ok}
  		format.js { render :index}
  	end

  end

  def new
    @expense = Expense.new
  end

  def create
    byebug
    @expense = Expense.new(expense_params)
    
    if @expense.save
      redirect_to expenses_path, notice: 'Your expense was submitted successfully!'
    else
      render :new
    end

  end

  private

    def expense_params
      params.require(:expense).permit(:transaction_type_id, :date, :concept, :category_id, :amount)
    end

end
