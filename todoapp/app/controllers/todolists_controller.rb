class TodolistsController < ApplicationController
  def index
      @todolist = Todolist.all
  end

  def show
  end

  def new
      @todolist = Todolist.new
  end

  def edit
      @todolist = Todolist.find params[:id]
  end

  def update
      todolist = Todolist.find params[:id]
      todolist.update_attributes todolist_params
      redirect_to :root
  end

  def create
      @todolist = Todolist.new(todolist_params)
      @todolist.save   
      redirect_to :root
  end

  def destroy
      todolist = Todolist.find params[:id]
      todolist.destroy
      redirect_to :root
  end

  private

  def todolist_params
  params.require(:todolist).permit(:name, :id)
  end

end
