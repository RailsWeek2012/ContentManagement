class ManagementsController < ApplicationController
  # GET /managements
  # GET /managements.json
  before_filter :require_login!, :except => [:index, :show]
  before_filter :require_operator!, :except => [:index, :show]
  def index
    @managements = Management.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @managements }
    end
  end

  # GET /managements/1
  # GET /managements/1.json
  def show
    @management = Management.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @management }
    end
  end

  # GET /managements/new
  # GET /managements/new.json
  def new
    @management = Management.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @management }
    end
  end

  # GET /managements/1/edit
  def edit
    @management = Management.find(params[:id])
  end

  # POST /managements
  # POST /managements.json
  def create
    @management = Management.new(params[:management])

    respond_to do |format|
      if @management.save
        format.html { redirect_to @management, notice: 'Management was successfully created.' }
        format.json { render json: @management, status: :created, location: @management }
      else
        format.html { render action: "new" }
        format.json { render json: @management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /managements/1
  # PUT /managements/1.json
  def update
    @management = Management.find(params[:id])

    respond_to do |format|
      if @management.update_attributes(params[:management])
        format.html { redirect_to @management, notice: 'Management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managements/1
  # DELETE /managements/1.json
  def destroy
    @management = Management.find(params[:id])
    @management.destroy

    respond_to do |format|
      format.html { redirect_to managements_url }
      format.json { head :no_content }
    end
  end
end
