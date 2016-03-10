class CreateTeam < ActiveRecord::Migration
  def change
    create_table :team do |t|
    	t.string :team

      t.timestamps null: false
    end
  end
end
