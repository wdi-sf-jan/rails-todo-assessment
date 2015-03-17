class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find params[:id]
    @items = @list.items
  end

  def edit
    @list = List.find params[:id]
  end

  def new
  end

  def create
    list = List.new list_params
    if list.save
      redirect_to lists_path, notice: "List created"
    else
      redirect_to :back, notice: "Unable to create list, every list must have a name"
    end
  end

  def update
  end

  def destroy
  end

private

def list_params
  params.require(:list).permit(:name)
end
end
