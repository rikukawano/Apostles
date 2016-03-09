class CreateHeights < ActiveRecord::Migration
  def change
    create_table :heights do |t|
    	t.integer :height

      t.timestamps null: false
    end
  end
end
