class UseersController < ApplicationController
  def new
    @useer = Useer.new
  end


  def create
    @useer = Useer.new(params[:useer])
    if @useer.save
      redirect_to managements_path,
                  notice: "Ihr Benutzerkonto wurde angelegt!"
    else
      render "new"
    end
  end
end
