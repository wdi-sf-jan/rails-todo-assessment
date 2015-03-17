class ItemsController < ApplicationController
  def index
    @list = List.find.params[:list_id]
    @items = @list.items
  end

  def new
    @list = List.find params[:list_id]
    @item = Item.new
  end

  def show
    @item = Item.find params[:id]
    @list = @item.list
  end

  def create
    @list = List.find params [:list_id]
    @item = Item.new item_params
    @item.list = @list

    if @item.save
      redirect_to list_items_path
    else 
      render :new
    end 
  end 

  def edit
    @item = Item.find params[:id]
    @list = @item.list
  end

  def update
    @item = Item.find params[:id]
    @item.update_attributes item_params
    @list = @item.list 

    if @item..save
      redirect_to item_path 
    else 
      render :edit
    end 

  def destroy 
    item = Item.find params[:id]
    item.destroy
    redirect_to list_items_path(item.list)
  end 

  private
    def item_params
      params.require(:item).permit(:thing, :list_id)
    end

  end
end
