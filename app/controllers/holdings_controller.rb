class HoldingsController < ApplicationController
	def show
		@holding = Holding.find(params[:id])
	end
end