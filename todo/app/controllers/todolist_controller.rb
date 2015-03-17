class TodolistController < ApplicationController
  def index
    @todo_lists = Todolist.all
  end

  def create
    Todolist.create todo_list_params
    redirect_to todolists_path
  end

  def new
    @toto_lists = Todolist.new
  end

  def edit
  end

  def show
    @tasks = Task.all
  end

  def destroy
    @todo_lists.destroy
    redirect_to todolists_path
  end

end
