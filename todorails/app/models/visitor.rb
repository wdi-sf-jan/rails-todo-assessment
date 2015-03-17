class Visitor < ActiveRecord::Base
  has_many :todolists, dependent: :destroy
  validates :name, presence: true
end
