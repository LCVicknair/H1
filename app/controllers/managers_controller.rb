class ManagersController < ApplicationController

  # def index
  # 	@managers = Manager.all
  # end

  def index
  if params[:search]
    @managers = Manager.search(params[:search]).order("created_at DESC")
  else
    @managers = Manager.all.order('created_at DESC')
  end
end

  def show
    @manager = Manager.find(params[:id])
    @holdings = Holding.all
    @holding = Holding.find(params[:id])
  end
end