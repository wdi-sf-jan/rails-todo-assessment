class Todolist < ActiveRecord::Base
  validates :title, presence: true
  validates :title, length: {minimum: 3}
  has_many :todos, dependent: :destroy
end
