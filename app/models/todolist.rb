class Todolist < ActiveRecord::Base
  has_many :todoitems
end
