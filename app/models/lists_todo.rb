class ListsTodo < ActiveRecord::Base
belongs_to :list
belongs_to :todo
end
