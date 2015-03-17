class TodosController < ApplicationController

  def index
    @todos = session[:todos] ||= []
  end

  # def new
  #   @todo = Todo.new
  # end

  def create 
    session[:todos] << [:item]
    redirect_to :todos
  end

  def delete
    session[:todos] =[]
    @todos = session[:todos]
    redirect_to :todos
  end

  def delete_one
    @todos = session[:todos]
    @todos.delete_if {|t| t == params[]}

    redirect_to :todos
  end

  
 
end
