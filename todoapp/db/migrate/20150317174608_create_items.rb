class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :thing
      t.string :list_id

      t.timestamps null: false
    end
  end
end
