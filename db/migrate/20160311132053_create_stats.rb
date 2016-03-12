class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
    	t.string :type
    	t.belongs_to :player, index: true
    	t.integer :player_id
    	t.integer :number
		t.timestamps null: false
	end

	create_table :weight_stat do |t|
		t.belongs_to :stat, index: true
		t.integer :weight_record
		t.integer :stat_id
	end

	create_table :height_stat do |t|
		t.belongs_to :stat, index: true
		t.integer :height
		t.integer :stat_id
	end

	create_table :benchpress_stat do |t|
		t.belongs_to :stat, index: true
		t.integer :benchpress_record
		t.integer :stat_id
	end

	create_table :squat_stat do |t|
		t.belongs_to :stat, index: true
		t.integer :squat_record
		t.integer :stat_id
    end
  end
end
