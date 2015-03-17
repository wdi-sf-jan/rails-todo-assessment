class TodolistsController < ApplicationController
  before_action :find_todolist, only: [:edit,:show,:destroy]

  def index
    @todolists = Todolist.all
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.create todolist_params
    redirect_to root_path
  end

  def show
  end

  def update
    @todolist.update_attributes todolist_params
    redirect_to root_path
  end

  def edit
  end

  def destroy
    
  end

  private
  def todolist_params
    params.require(:todolist).permit(:todoitem)

  end

  def find_todolist
    @todolist = Todolist.find(params[:id])
  end
end
