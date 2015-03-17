class TaskListsController < ApplicationController
  def index
    @tasklists = TaskList.all 
  end
end
  


