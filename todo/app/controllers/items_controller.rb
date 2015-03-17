class ItemsController < ApplicationController
  def index
    @items = Item.where(todolist_id: params[:todolist_id])
   @item = Item.where(id: params[:id])
  end

  def new
@item = Item.new
  end

def create
@item = Item.create item_params
 
redirect_to list_items_path
end

  def update
    @item = Item.find_by(params[:id])
    @item.update(item_params)
  end

  def show
   @item = Item.find_by(params[:id])
  end

  private 
  def item_params
    params.require(:item).permit(:name)
  end
end

