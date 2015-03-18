class Todo < ActiveRecord::Base
  validates :item, presence: true
  validates :item, length: {minimum: 3}
  belongs_to :todolist
end
