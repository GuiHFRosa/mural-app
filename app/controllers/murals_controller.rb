class MuralsController < ApplicationController
  before_action :set_mural, only: %i[ show edit update destroy ]

  # GET /murals or /murals.json
  def index
    @murals = Mural.all
  end

  # GET /murals/1 or /murals/1.json
  def show
  end

  # GET /murals/new
  def new
    @mural = Mural.new
  end

  # GET /murals/1/edit
  def edit
  end

  # POST /murals or /murals.json
  def create
    @mural = Mural.new(mural_params)

    respond_to do |format|
      if @mural.save
        format.html { redirect_to mural_url(@mural), notice: "Mural was successfully created." }
        format.json { render :show, status: :created, location: @mural }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /murals/1 or /murals/1.json
  def update
    respond_to do |format|
      if @mural.update(mural_params)
        format.html { redirect_to mural_url(@mural), notice: "Mural was successfully updated." }
        format.json { render :show, status: :ok, location: @mural }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /murals/1 or /murals/1.json
  def destroy
    @mural.destroy

    respond_to do |format|
      format.html { redirect_to murals_url, notice: "Mural was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mural
      @mural = Mural.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mural_params
      params.require(:mural).permit(:name, :title, :description)
    end
end
