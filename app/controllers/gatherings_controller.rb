class GatheringsController < ApplicationController
  before_action :set_gathering, only: [:show, :edit, :update, :destroy]

  # GET /gatherings
  # GET /gatherings.json
  def index
    @gatherings = Gathering.all
  end

  # GET /gatherings/1
  # GET /gatherings/1.json
  def show
  end

  # GET /gatherings/new
  def new
    @gathering = Gathering.new
  end

  # GET /gatherings/1/edit
  def edit
  end

  # POST /gatherings
  # POST /gatherings.json
  def create
    @gathering = Gathering.new(gathering_params)

    respond_to do |format|
      if @gathering.save
        format.html { redirect_to @gathering, notice: 'Gathering was successfully created.' }
        format.json { render :show, status: :created, location: @gathering }
      else
        format.html { render :new }
        format.json { render json: @gathering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gatherings/1
  # PATCH/PUT /gatherings/1.json
  def update
    respond_to do |format|
      if @gathering.update(gathering_params)
        format.html { redirect_to @gathering, notice: 'Gathering was successfully updated.' }
        format.json { render :show, status: :ok, location: @gathering }
      else
        format.html { render :edit }
        format.json { render json: @gathering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gatherings/1
  # DELETE /gatherings/1.json
  def destroy
    @gathering.destroy
    respond_to do |format|
      format.html { redirect_to gatherings_url, notice: 'Gathering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gathering
      @gathering = Gathering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gathering_params
      params.require(:gathering).permit(:location, :start_at, :user_id)
    end
end
