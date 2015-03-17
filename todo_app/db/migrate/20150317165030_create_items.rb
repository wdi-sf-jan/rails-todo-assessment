class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :content
      t.integer :to_do_list_id
      t.timestamps null: false
    end
  end
end
