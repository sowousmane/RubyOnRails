class RoomItemsController < ApplicationController
  before_action :set_room_item, only: %i[ show edit update destroy ]

  # GET /room_items or /room_items.json
  def index
    @room_items = RoomItem.all
    @room_elem = Room.all
    @item_elem = Item.all
  end

  # GET /room_items/1 or /room_items/1.json
  def show
    @room_items = RoomItem.all
  end

  # GET /room_items/new
  def new
    @room_item = RoomItem.new
    @rooms = Room.all
    @items = Item.all
  end

  # GET /room_items/1/edit
  def edit
  end

  # POST /room_items or /room_items.json
  def create

    @room_item = RoomItem.create(params.require(:room_item).permit(:Room_id, :Item_id))
    respond_to do |format|
      if @room_item.save
        format.html { redirect_to @room_item, notice: "Room item was successfully created." }
        format.json { render :show, status: :created, location: @room_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_items/1 or /room_items/1.json
  def update
    respond_to do |format|
      if @room_item.update(room_item_params)
        format.html { redirect_to @room_item, notice: "Room item was successfully updated." }
        format.json { render :show, status: :ok, location: @room_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_items/1 or /room_items/1.json
  def destroy
    @room_item.destroy
    respond_to do |format|
      format.html { redirect_to room_items_url, notice: "Room item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_item
      @room_item = RoomItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_item_params
      params.fetch(:room_item, {})
    end
end
