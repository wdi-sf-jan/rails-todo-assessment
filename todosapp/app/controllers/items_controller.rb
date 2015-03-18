class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find params[:id]
    @list = @item.list
  end

  def new
    @list = List.find(params[:list_id])
  end

  def create
    item = Item.new item_params
    item.list = List.find params[:list_id]
    if item.save
      redirect_to item.list, notice: "#{item.name} added to list"
    else
      redirect_to :back, notice: "Please add a name"
    end
  end

  def update
    item = Item.find params[:id]
    item.update_attributes item_params
    if item.save
      redirect_to item, notice: "#{item.name} updated"
    else
      redirect_to :back, notice: "Name field cannot be empty"
    end

  end

  def destroy
    item = Item.find params[:id]
    item.destroy
    redirect_to item.list, notice: "#{item.name} has been deleted"
  end

  private

  def item_params
    params.require(:item).permit(:name, :desc)
  end
end
