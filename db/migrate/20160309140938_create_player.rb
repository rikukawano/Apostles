class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :player do |t|
    	t.string :name
    	

      t.timestamps null: false
    end
  end
end
