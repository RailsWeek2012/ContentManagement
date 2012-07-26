class ImpressumsController < ApplicationController
  # GET /impressums
  # GET /impressums.json
  def index
    @impressums = Impressum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @impressums }
    end
  end

  # GET /impressums/1/edit
  def edit
    @impressum = Impressum.find(params[:id])
  end

  # PUT /impressums/1
  # PUT /impressums/1.json
  def update
    @impressum = Impressum.find(params[:id])

    respond_to do |format|
      if @impressum.update_attributes(params[:impressum])
        format.html { redirect_to impressums_url, notice: 'Impressum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @impressum.errors, status: :unprocessable_entity }
      end
    end
  end
end
