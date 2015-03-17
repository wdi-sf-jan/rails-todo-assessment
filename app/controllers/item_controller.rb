class ItemController < ApplicationController
  before_action :find_item, only: [:edit, :show, :destroy]
  
  def index
    @items = Item.all
  end

  def create
    Item.create item_params 
    redirect_to items_path
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def show
    @lists = List.all
  end

  def update
    @item.update_attributes item_params
    redirect_to @item
  end

  def destroy
    list_id = @item.list_id
    @item.destroy
    redirect_to item_path(list_id)
  end

  private
  def item_params
    params.require(:item).permit(:description, :complete)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end

