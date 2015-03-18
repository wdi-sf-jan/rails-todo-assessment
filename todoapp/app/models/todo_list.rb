class TodoList < ActiveRecord::Base
  has_many :todoitems, dependent: :destroy
end
