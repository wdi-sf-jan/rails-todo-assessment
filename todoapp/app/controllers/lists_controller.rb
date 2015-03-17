class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new list_params

    if @list.save
      redirect_to lists_path
    else 
      render :new 
    end
  end

  def show
    @list = List.find params[:id]
  end

  def edit
    @list = List.find params [:id]
  end

  def update
    @list = List.find params [:id]
    if @list.update_attributes list_params
      redirect_to lists_path(@list)
    else 
      render :edit
    end 

  end

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to lists_path
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
