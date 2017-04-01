class IdeapostsController < ApplicationController
  before_action :set_ideapost, only: [:show, :edit, :update, :destroy]

  # GET /ideaposts
  # GET /ideaposts.json
  def index
    @ideaposts = Ideapost.all
  end

  # GET /ideaposts/1
  # GET /ideaposts/1.json
  def show
  end

  # GET /ideaposts/new
  def new
    @ideapost = Ideapost.new
  end

  # GET /ideaposts/1/edit
  def edit
  end

  # POST /ideaposts
  # POST /ideaposts.json
  def create
    @ideapost = Ideapost.new(ideapost_params)

    respond_to do |format|
      if @ideapost.save
        format.html { redirect_to @ideapost, notice: 'Ideapost was successfully created.' }
        format.json { render :show, status: :created, location: @ideapost }
      else
        format.html { render :new }
        format.json { render json: @ideapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideaposts/1
  # PATCH/PUT /ideaposts/1.json
  def update
    respond_to do |format|
      if @ideapost.update(ideapost_params)
        format.html { redirect_to @ideapost, notice: 'Ideapost was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideapost }
      else
        format.html { render :edit }
        format.json { render json: @ideapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideaposts/1
  # DELETE /ideaposts/1.json
  def destroy
    @ideapost.destroy
    respond_to do |format|
      format.html { redirect_to ideaposts_url, notice: 'Ideapost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideapost
      @ideapost = Ideapost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideapost_params
      params.require(:ideapost).permit(:content, :user_id)
    end
end
