class TodolistsController < ApplicationController
  before_action :get_todolist, only: [:show, :edit, :update]

  def index
    @todolists = Todolist.all
  end

  def new
  end

  def create
    Todolist.create list_params
    redirect_to todolists_path
  end

  def show
  end

  def edit
  end

  def update
    @todolist.update list_params
    redirect_to todolists_path
  end

  def destroy
    Todolist.destroy(params[:id])
    redirect_to todolists_path
  end

  private
  def get_todolist
    @todolist = Todolist.find(params[:id])
  end

  def list_params
    params.require(:todolist).permit(:name)
  end
end
