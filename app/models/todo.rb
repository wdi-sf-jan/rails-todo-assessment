class Todo < ActiveRecord::Base
  validates :task, presence: true
  belongs_to :todo_list
end
