class UserController < ApplicationController
  before_action :require_login, only: [:edit, :show, :update]
  before_action :require_correct_user, only: [:edit, :show, :update]
  
  def index
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:first_name,:last_name,:email,:location_city, :location_state,:password,:password_confirmation))
    if !user.valid?
      @user = user
      return render 'index'
    end
    user.save

    session[:logged_in_as] = user.id
    redirect_to '/event'
  end

  def login_post
    user = User.find_by(:email => params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session['logged_in_as'] = user.id
      redirect_to '/event'
    else
      flash[:error] = "Email/Password combination invalid"
      redirect_to '/'

    end
  end

  def show
    @user = current_user

  end

  def edit
  end

  def update
    @user.first_name = params[:first_name]
    user.last_name =  params[:last_name]
    user.email = params[:email]
    user.location_city = params[:location_city]
    user.location_state = params[:location_state]

    if !user.valid?
      return render 'show'
    end

  end

  def logout_post
    session.delete(:logged_in_as)
    redirect_to '/'
  end
end
