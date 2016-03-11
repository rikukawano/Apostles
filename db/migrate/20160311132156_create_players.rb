class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.string :year
    	t.timestamps null: false

    create_table :stat do |t|
		t.belongs_to :player, index :true
		t.integer :number
		t.integer :player_id
    end
  end
end
