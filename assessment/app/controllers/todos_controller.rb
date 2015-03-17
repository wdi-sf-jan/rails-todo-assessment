class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.news
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to @todo
    else
      render :new
    end
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_url
  end

private

  def todo_params
    params.require(:todo).permit(:name, :content)
  end

end
