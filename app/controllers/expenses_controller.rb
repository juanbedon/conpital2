class ExpensesController < ApplicationController

  def index

    transaction_type = params["transaction_type"]
    category = params["category"]

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

    current_month = params["current_month"]

    if current_month
      byebug
      @expenses = Expense.where(date: Date.current.strftime("%Y-%m-%d"))
    else
      @expenses = Expense.where(date: 5.months.ago.strftime("%Y-%m-%d"))
    end

    respond_to do |format|
      format.html { render :index}
      format.json { render json: @expenses, status: :ok}
      format.js { render :index}
    end

  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create

    @expense = current_user.expenses.create(expense_params)

    if @expense.save
      redirect_to expenses_path, notice: 'Your expense was submitted successfully!'
    else
      redirect_to expenses_path, notice: 'Your expense was not submitted!'
    end

  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update

    @expense = Expense.find(params[:id])
    @expense.update_attributes(expense_params)

    redirect_to expenses_path, notice: "Your expense was updated!"

  end

  def destroy

    expense = Expense.find(params[:id])
    expense.destroy
​    
    redirect_to expense_path, notice: "Your expense was removed successfully!"

  end

  private

    def expense_params
      params.require(:expense).permit(:transaction_type_id, :date, :concept, :category_id, :amount)
    end

end