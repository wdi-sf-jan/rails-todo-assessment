class Todolist < ActiveRecord::Base
  belongs_to :visitor
  validates :todoitem, presence: true
end
