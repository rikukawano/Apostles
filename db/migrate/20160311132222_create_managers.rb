class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
    	t.belongs_to :team, index: true
    	t.string :name
		t.timestamps null: false

	create_table :team do |t|
		t.string :name
    end
  end
end
