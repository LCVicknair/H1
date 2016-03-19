class FundsController < ApplicationController

def index
	@funds = Fund.all
	#shows all of the available funds
end

def show
	@fund = Fund.find(params[:id])
end





private




end