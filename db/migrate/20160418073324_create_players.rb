class CreatePlayers < ActiveRecord::Migration
  def change
  	create_table :players do |t|
    	t.string :name
    	t.integer :number
    	t.string :year
		t.timestamps null: false
	end
  end
end