class UsersController < ApplicationController
  before_filter :require_login!
  #before_filter :require_admin!
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_back_or_default management_path,
                  notice: "Ein neues Benutzerkonto wurde angelegt!"
    else
      render "new"
    end
  end

end
