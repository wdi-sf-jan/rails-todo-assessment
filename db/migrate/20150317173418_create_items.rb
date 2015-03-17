class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :complete
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
