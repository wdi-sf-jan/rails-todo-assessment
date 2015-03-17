class Person < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
  validates :email, uniqueness: true, on: :create
  validates :age, numericality: true, on: :update
end

