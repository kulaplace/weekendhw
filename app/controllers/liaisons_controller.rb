class LiaisonsController < ApplicationController
  before_action :set_liaison, only: [:show, :edit, :update, :destroy]

  # GET /liaisons
  # GET /liaisons.json
  def index
    @liaisons = Liaison.all
  end

  # GET /liaisons/1
  # GET /liaisons/1.json
  def show
  end

  # GET /liaisons/new
  def new
    @liaison = Liaison.new
  end

  # GET /liaisons/1/edit
  def edit
  end

  # POST /liaisons
  # POST /liaisons.json
  def create
    @liaison = Liaison.new(liaison_params)

    respond_to do |format|
      if @liaison.save
        format.html { redirect_to @liaison, notice: 'Liaison was successfully created.' }
        format.json { render :show, status: :created, location: @liaison }
      else
        format.html { render :new }
        format.json { render json: @liaison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liaisons/1
  # PATCH/PUT /liaisons/1.json
  def update
    respond_to do |format|
      if @liaison.update(liaison_params)
        format.html { redirect_to @liaison, notice: 'Liaison was successfully updated.' }
        format.json { render :show, status: :ok, location: @liaison }
      else
        format.html { render :edit }
        format.json { render json: @liaison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liaisons/1
  # DELETE /liaisons/1.json
  def destroy
    @liaison.destroy
    respond_to do |format|
      format.html { redirect_to liaisons_url, notice: 'Liaison was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liaison
      @liaison = Liaison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liaison_params
      params.require(:liaison).permit(:name, :relation)
    end
end
