class CreateYear < ActiveRecord::Migration
  def change
    create_table :year do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
