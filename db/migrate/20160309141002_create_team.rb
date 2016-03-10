class CreateTeam < ActiveRecord::Migration
  def change
    create_table :team do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
