class BanksController < ApplicationController
  def new
    @bank = Bank.new
  end
  def create
    Bank.create(params[:bank])
    @bank = Bank.order(:name)
    @banks = Bank.all
  end

end