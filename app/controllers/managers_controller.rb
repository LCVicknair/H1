class ManagersController < ApplicationController

  def index
    if params[:search]
      @managers = Manager.search(params[:search]).order("created_at DESC")
    else
      @managers = Manager.all.order('created_at DESC')
    end
    @new_manager = Manager.new
  end

  def show
    @manager = Manager.find(params[:id])
    @holdings = Holding.all
    @holding = Holding.find(params[:id])
    
  end

  def add
    current_user.managers << Manager.find(params[:id])
    
    redirect_to user_path(current_user)
  end


  def create
    service = XigniteRetrievalService.new
    service.retrieve_holdings(params[:manager][:cik])
    redirect_to managers_path
  end
end