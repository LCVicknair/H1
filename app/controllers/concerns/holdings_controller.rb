class HoldingsController < ActiveController
	def show
		@holding = Holding.find(params[:id])
end