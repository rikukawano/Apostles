class CreateSquats < ActiveRecord::Migration
  def change
    create_table :squats do |t|
    	t.integer :squat

      t.timestamps null: false
    end
  end
end
