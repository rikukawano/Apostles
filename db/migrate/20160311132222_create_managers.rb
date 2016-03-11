class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
    	t.string :name
		t.timestamps null: false

	create_table :team do |t|
		t.belongs_to :manager, index: true
		t.string :team_name
		t.integer :manager_id
    end
  end
end
