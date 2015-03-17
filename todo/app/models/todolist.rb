class Todolist < ActiveRecord::Base
  has_many :to_dos, dependent: :destroy
end
