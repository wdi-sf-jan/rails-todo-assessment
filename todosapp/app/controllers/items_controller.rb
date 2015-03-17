class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
    
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:item).permit(:name, :desc)
  end
end
