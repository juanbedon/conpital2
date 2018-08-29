class Api::V1::ExpensesController < ApplicationController

  protect_from_forgery with: :null_session
  before_action :authenticate

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
    
    @expense = Expense.new(expense_params.merge(user: token_user))

    if @expense.save
      render json: @expense, status: 201
    else
      render json: { errors: @expense.errors }, status: 422
    end

  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update

    @expense = Expense.find(params[:id])

    if @expense.user == token_user

      if @expense.update(expense_params)
        render json: @expense, status: 204
      else
        render json: { errors: @expense.errors }, status: 422
      end

    else

      head 403

    end

  end

  def destroy

    @expense = Expense.find(params[:id])

    if @expense.user == token_user
      @expense.destroy
      head 204
    end

  end

  private

    def expense_params
      params.require(:expense).permit(:transaction_type_id, :date, :concept, :category_id, :amount)
    end

    def authenticate
      unless User.where(auth_token: request.headers['HTTP_X_API_TOKEN']).exists? 
        head 401
      end
    end

    def token_user
      User.find_by(auth_token: request.headers['HTTP_X_API_TOKEN'])
    end

end
