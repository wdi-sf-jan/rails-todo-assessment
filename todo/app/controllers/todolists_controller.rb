class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
  end

  def edit
    @todolist = Todolist.find(params[:id])
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(list_name:params[:todolist][:list_name])
    if @todolist.save 
      redirect_to todolist_path (@todolist)
    else
    render :new
    end

  end

  def update
    @todolist = Todolist.find(params[:id])
    @todolist.update_attribute(:list_name, params[:todolist][:list_name])
     redirect_to todolists_path
  end

  def destroy
     todolist = Todolist.find(params[:id])
     todolist.destroy
     redirect_to todolists_path
  end 
end
