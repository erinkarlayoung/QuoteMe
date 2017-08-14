class HomeController < ApplicationController
	def index
		@user = User.new
	end
	# Exisiting User login
	def login
		user = User.find_by(email: params[:email])
		if user && user.password == params[:password]
			session[:user_id] = user.id
			flash[:notice] = "Welcome #{user.full_name}"
			redirect_to posts_path
		else
			flash[:notice] = "Sorry, wrong credentials"
			redirect_to :root
		end
	end
	# logout
	def logout
		session[:user_id] = nil
		redirect_to :root
	end
	# Create a new user
  def signup
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def user_params
  	params.require(:user).permit(:fname, :lname, :email, :password)
  end
end
