class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :todoitem
      t.belongs_to :vistor, index: true
      t.timestamps null: false
    end
  end
end



