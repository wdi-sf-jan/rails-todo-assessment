class TodosController < ApplicationController
  def index
    @items = Item.find_by_todo_id(params[todolist_id])
  end

  def create
    Item.create(params)
  end

  def update
    @item = Item.find(params[:id])
    @item.update(params)
  end

  def show
   @item = Item.find(params[:id])
  end
end
