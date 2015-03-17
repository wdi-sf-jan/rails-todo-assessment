class Todo < ActiveRecord::Base
  belongs_to :list
  validates_length_of :content, minimum: 1, maximum: 100
end
