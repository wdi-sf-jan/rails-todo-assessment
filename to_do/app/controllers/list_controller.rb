class ListController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find params[:id]
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params
    if @item.save
      redirect_to "/list"
    else
      render :new
    end

  def edit
    @item = Item.find params[:id]
  end

  def update
    @item = Item.find params[:id]
    if @item.update_attributes item_params
      redirect_to "/items/#{item.id}"
    else
      render :edit
    end
  end

def destroy
  item = Item.find params[:id]
  item.destroy
  redirect_to "/items"
end

  private
    def item_params
      params.require(:item).permit(:name)
    end
  end
end