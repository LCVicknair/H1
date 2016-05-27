class ManagersController < ApplicationController

  def index
  	@managers = Manager.all
  end

  def show
    @manager = Manager.find(params[:id])
    @holdings = Holding.all
    @holding = Holding.find(params[:id])
  end
end