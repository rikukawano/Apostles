class CreateManager < ActiveRecord::Migration
  def change
    create_table :manager do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
