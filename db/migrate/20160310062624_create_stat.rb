class CreateStat < ActiveRecord::Migration
  def change
    create_table :stat do |t|
    	t.integer :log

      t.timestamps null: false
    end
  end
end
