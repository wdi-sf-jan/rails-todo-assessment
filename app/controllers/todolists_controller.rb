class TodolistsController < ApplicationController

  def index
    @todolists = Todolist.all
  end

  def new
    @todolist = Todolist.new
  end

  def show
  end

  def edit
  end

  def create
    @todolist = Todolist.new todolist_params
    if @todolist.save
      redirect_to todolists_path
    else
      flash.now[:alert] = "There was a problem"
      render :new
    end
  end

  private

  def todolist_params
    params.require(:todolist).permit(:title)
  end

end
