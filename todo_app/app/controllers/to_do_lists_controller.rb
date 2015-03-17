class ToDoListsController < ApplicationController
def index
  @ToDoLists = ToDoList.all
end

end