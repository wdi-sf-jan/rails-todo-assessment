class TodoItemsController < ApplicationController
  def index
    @lists = TodoList.all
  end

  def show
    @list = TodoList.find(params[:id])
    @items = @list.todoitems
  end

  def edit
  end

  def new
  end
end
