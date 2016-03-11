class Player < ActiveRecord::Base
	has_one :stat
	has_many :weight_stats, through: :stats
	has_many :height_stats, through: :stats
	has_many :squat_stats, through: :stats
	has_many :benchpress_stats, through: :stats
end
