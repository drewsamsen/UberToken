class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
	  @user.save
	  flash[:notice] = "User has been created."
	  redirect_to @user 
	end

	def show
		@user = User.find(params[:id])
	end
end