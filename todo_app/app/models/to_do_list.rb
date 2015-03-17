class ToDoList < ActiveRecord::Base
  has_many :items
end
