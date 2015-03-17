class ListsController < ApplicationController
  def index
    @todos = Todo.all
    @lists = List.all
    @list = List.new
  end

  def show
  end

  def create
    List.create list_params
    redirect_to lists_path
  end

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :id)
  end
end
