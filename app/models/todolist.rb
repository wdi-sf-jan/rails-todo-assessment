class Todolist < ActiveRecord::Base
  has_many :todos, dependent: :destroy
end
