class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_url
    else
      render :new
    end
  end

  def update
    if @list.update(list_params)
      redirect to @list
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_url
  end

private

  def list_params
    params.require(:list).permit(:name)
  end

end