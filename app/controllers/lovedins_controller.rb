class LovedinsController < ApplicationController
  before_action :set_lovedin, only: [:show, :edit, :update, :destroy]

  # GET /lovedins
  # GET /lovedins.json
  def index
    @lovedins = Lovedin.all
  end

  # GET /lovedins/1
  # GET /lovedins/1.json
  def show
  end

  # GET /lovedins/new
  def new
    @lovedin = Lovedin.new
  end

  # GET /lovedins/1/edit
  def edit
  end

  # POST /lovedins
  # POST /lovedins.json
  def create
    @lovedin = Lovedin.new(lovedin_params)

    respond_to do |format|
      if @lovedin.save
        format.html { redirect_to @lovedin, notice: 'Lovedin was successfully created.' }
        format.json { render :show, status: :created, location: @lovedin }
      else
        format.html { render :new }
        format.json { render json: @lovedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovedins/1
  # PATCH/PUT /lovedins/1.json
  def update
    respond_to do |format|
      if @lovedin.update(lovedin_params)
        format.html { redirect_to @lovedin, notice: 'Lovedin was successfully updated.' }
        format.json { render :show, status: :ok, location: @lovedin }
      else
        format.html { render :edit }
        format.json { render json: @lovedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovedins/1
  # DELETE /lovedins/1.json
  def destroy
    @lovedin.destroy
    respond_to do |format|
      format.html { redirect_to lovedins_url, notice: 'Lovedin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lovedin
      @lovedin = Lovedin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lovedin_params
      params.require(:lovedin).permit(:name, :birth)
    end
end
