class TodoList < ActiveRecord::Base
  validates :name, presence: true
  has_many :todos, dependent: :destroy
end
