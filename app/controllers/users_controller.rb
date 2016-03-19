class UsersController < ApplicationController

  def index
  	@user = User.find(params[:user_id])
  end

  def show
  	@user = User.find(params[:id])
    @funds = @user.funds
  end

def create
	@user = User.new(user_params)
	# if @user.save
	# 	flash[:notice] = "Welcome to Hedgies!"
	# 	redirect_to new_user_registration_path
	# elsegti fetch
	# end

end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email)
	end

	# def find_people
	# 	@people = Directory.find(params[:id])
	# end

	# def search
	# 	search = params[:search]
	# 	@people = Directory.search_for(search)
	# end


end