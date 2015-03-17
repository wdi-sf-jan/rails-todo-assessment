class Todo < ActiveRecord::Base
  validates :task, presence: true
  
  private 
    def todo_params
      params.require(:todo).permit(:task)
    end

end
