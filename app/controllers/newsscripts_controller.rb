class NewsscriptsController < ApplicationController
  # GET /newsscripts
  # GET /newsscripts.json
  before_filter :require_login!, :except => [:index, :show]
  def index
    @newsscripts = Newsscript.all(:order => "created_at DESC")
    #@newsscripts = Newsscript.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsscripts }
    end
  end

  # GET /newsscripts/1
  # GET /newsscripts/1.json
  def show
    @newsscript = Newsscript.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsscript }
    end
  end

  # GET /newsscripts/new
  # GET /newsscripts/new.json
  def new
    @newsscript = Newsscript.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsscript }
    end
  end

  # GET /newsscripts/1/edit
  def edit
    @newsscript = Newsscript.find(params[:id])
  end

  # POST /newsscripts
  # POST /newsscripts.json
  def create
    @newsscript = Newsscript.new(params[:newsscript])

    respond_to do |format|
      if @newsscript.save
        format.html { redirect_to @newsscript, notice: 'Newsscript was successfully created.' }
        format.json { render json: @newsscript, status: :created, location: @newsscript }
      else
        format.html { render action: "new" }
        format.json { render json: @newsscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsscripts/1
  # PUT /newsscripts/1.json
  def update
    @newsscript = Newsscript.find(params[:id])

    respond_to do |format|
      if @newsscript.update_attributes(params[:newsscript])
        format.html { redirect_to @newsscript, notice: 'Newsscript was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsscripts/1
  # DELETE /newsscripts/1.json
  def destroy
    @newsscript = Newsscript.find(params[:id])
    @newsscript.destroy

    respond_to do |format|
      format.html { redirect_to newsscripts_url, notice: 'News was sucessfully deleted' }
      format.json { head :no_content }
    end
  end
end
