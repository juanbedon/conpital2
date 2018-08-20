class Api::V1::ExpensesController < ApplicationController

  def index

    @expenses = Expense.all

    respond_to do |format|
      format.json { render json: @expenses, status: :ok}
    end

  end

  def show
    
    @expense = Expense.find(params[:id])

    render json: @expense

  end

  def new
    @expense = Expense.new
  end

  def create
    
    @expense = Expense.new(expense_params)
    @expense.user_id = current_user

    if @expense.save
      redirect_to expenses_path, notice: 'Your expense was submitted successfully!'
    else
      redirect_to expenses_path, notice: 'Your expense was not submitted!'
      render json: { errors: expense.errors }, status: 422
    end

  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update

    expense = Expense.find(params[:id])
    if expense.update(expense_params)
      render json: expense
    else
      render json: { errors: expense.errors }, status: 422
    end

  end

  def destroy

    expense = Expense.find(params[:id])
    expense.destroy
​    
    redirect_to expense_path, notice: "Your expense was removed successfully!"
    head :no_content

  end

  private

    def expense_params
      params.require(:expense).permit(:transaction_type_id, :date, :concept, :category_id, :amount)
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

end
