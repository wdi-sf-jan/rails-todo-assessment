class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
