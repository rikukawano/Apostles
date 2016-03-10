class Player < ActiveRecord::Base
	has_one :stat
	has_many :weight_stat, through: :stat
	has_many :height_stat, through: :stat
	has_many :squat_stat, through: :stat
	has_many :benchpress_stat, through: :stat
end
