class BanksController < ApplicationController
  def index
  end
  def new
    @bank = Bank.new
  end
  def create
    @bank = Bank.create(params[:bank])
  end

end