class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
    	t.integer :weight_record

      t.timestamps null: false
    end
  end
end
