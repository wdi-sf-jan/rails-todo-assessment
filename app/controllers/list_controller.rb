class ListController < ApplicationController
  before_action :find_item, only: [:edit, :show, :update, :destroy, :add_item, :remove_item]

  def index
    @lists = List.all
  end

  def create
    @list = List.create list_params
    redirect_to lists_path
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find_by_id(params[:id])
  end

  def show
    @items = Item.all
  end

  def update
    @list.update_attributes list_params
    redirect_to @list
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  def add_item
    @list = List.find(params[:id])
    item = Item.find(item_params[:id])
    unless @list.items.include? item
      @list.items << item
    end
    redirect_to @list
  end

  def remove_item
    item = Item.find(params[:list_id])
    @list.item.delete(item)
    redirect_to @list
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end

  def item_params
    params.require(:item).permit(:description, :complete, :list_id)
  end

  def find_item
    @item = Item.find_by_id(params[:id])
  end
end
