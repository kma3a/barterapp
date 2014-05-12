class CreateAvailableItems < ActiveRecord::Migration
  def change
    create_table :available_items do |t|
      t.integer :user_id
      t.integer :item_id
      t.timestamps
    end
  end
end
