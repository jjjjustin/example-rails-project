class EquipmentItemsController < ApplicationController
  before_action :set_equipment_item, only: [:show, :edit, :update, :destroy]

  # GET /equipment_items
  # GET /equipment_items.json
  def index
    @equipment_items = EquipmentItem.all
  end

  # GET /equipment_items/1
  # GET /equipment_items/1.json
  def show
  end

  # GET /equipment_items/new
  def new
    @equipment_item = EquipmentItem.new
  end

  # GET /equipment_items/1/edit
  def edit
  end

  # POST /equipment_items
  # POST /equipment_items.json
  def create
    @equipment_item = EquipmentItem.new(equipment_item_params)
    @equipment_item.user_id = current_user.id
    respond_to do |format|
      if @equipment_item.save
        format.html { redirect_to user_path(current_user), notice: 'Equipment item was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_item }
      else
        format.html { render :new }
        format.json { render json: @equipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_items/1
  # PATCH/PUT /equipment_items/1.json
  def update
    respond_to do |format|
      if @equipment_item.update(equipment_item_params)
        format.html { redirect_to @equipment_item, notice: 'Equipment item was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_item }
      else
        format.html { render :edit }
        format.json { render json: @equipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_items/1
  # DELETE /equipment_items/1.json
  def destroy
    @equipment_item.destroy
    respond_to do |format|
      format.html { redirect_to equipment_items_url, notice: 'Equipment item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_item
      @equipment_item = EquipmentItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_item_params
      params.require(:equipment_item).permit(:name, :serial, :purchase_date, :comments, :equipment_type_id, :user_id)
    end
end
