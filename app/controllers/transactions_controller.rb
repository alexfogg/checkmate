class TransactionsController < ApplicationController
  def index
  end
  def new
    @transaction = Transaction.new
  end
  def create
    @transaction = Transaction.create(params[:transaction])
  end

end