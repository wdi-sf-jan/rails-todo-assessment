class Task < ActiveRecord::Base
  belongs_to :person
  validates :title, :description, :person_id
end
