class SignupController < ApplicationController
	
	def new
		@user = User.new
	end
	def signup
		@user = User.new(user_params)
		if @user.save
			redirect_to home_path
		end
	end

	def user_params
    	params.require(:user).permit(:name, :email, :password)
	end
end
