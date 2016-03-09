class CreateBenchpresses < ActiveRecord::Migration
  def change
    create_table :benchpresses do |t|
    	t.integer :benchpress

      t.timestamps null: false
    end
  end
end
