class LoginController < ApplicationController
  def index

  end
  def create
    users=Users.find_by(params[:session][:email])
    if users && users.authenticate(params[:session][:password])
      session[:users.id] = users.id
      flash.now[:sucess]="You have successfully logged in HappyyLab"
      redirect_to article
    else
      flash.now[:danger]="Une erreur innatendue s'est produite. Veuillez vérifier les informations entrées"
      render 'index'
    end
  end
  def destroy
    session[:users.id] = nil
    flash[:sucess] = "You have loggout perfectly"
    redirect_to root_path
  end
end
