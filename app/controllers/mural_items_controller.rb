class MuralItemsController < ApplicationController
  before_action :set_mural_item, only: %i[ show edit update destroy ]

  # GET /mural_items or /mural_items.json
  def index
    @mural_items = MuralItem.all
  end

  # GET /mural_items/1 or /mural_items/1.json
  def show
  end

  # GET /mural_items/new
  def new
    @mural_item = MuralItem.new
  end

  # GET /mural_items/1/edit
  def edit
  end

  # POST /mural_items or /mural_items.json
  def create
    @mural_item = MuralItem.new(mural_item_params)

    respond_to do |format|
      if @mural_item.save
        format.html { redirect_to mural_item_url(@mural_item), notice: "Mural item was successfully created." }
        format.json { render :show, status: :created, location: @mural_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mural_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mural_items/1 or /mural_items/1.json
  def update
    respond_to do |format|
      if @mural_item.update(mural_item_params)
        format.html { redirect_to mural_item_url(@mural_item), notice: "Mural item was successfully updated." }
        format.json { render :show, status: :ok, location: @mural_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mural_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mural_items/1 or /mural_items/1.json
  def destroy
    @mural_item.destroy

    respond_to do |format|
      format.html { redirect_to mural_items_url, notice: "Mural item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mural_item
      @mural_item = MuralItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mural_item_params
      params.require(:mural_item).permit(:title, :description)
    end
end
