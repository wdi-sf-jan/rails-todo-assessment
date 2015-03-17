class Item < ActiveRecord::Base
  belongs_to :list
  validates :thing, presence: true 
end
