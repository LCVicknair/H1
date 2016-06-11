class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!


  def index
  	# if user_signed_in?
    @user_count = User.all.count
    @users = User.all
		# else
		# 	redirect_to action: :sign_in_page
		# end 
  end

  # def sign_in_page
  # 	render 'devise/registrations/new', :layout => false
  # end
end


