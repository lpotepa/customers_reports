class TransactionsController < ApplicationController

  def index
    @transaction = Transaction.new
    @transactions = Transaction.order(order)
    respond_to :html, :js
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.save
    respond_to :js
  end

  private

  def order
    if params[:order]
      column = params[:order].keys.first
      direction = params[:order].values.first
    else
      column = "first_name"
      direction = "asc"
    end
    "#{column} #{direction}"
  end

  def transaction_params
    params.require(:transaction).permit(:email, :first_name, :last_name, :amount)
  end
end
