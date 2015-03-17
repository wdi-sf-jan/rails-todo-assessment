class TaskController < ApplicationController

  def create
    Task.create task_params
    redirect_to todolist_path
  end

  def new
    @task = Task.new
  end

  def destroy
    @task.destroy
    redirect_to todolist_path
  end
  
end
