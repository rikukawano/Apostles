class Stat < ActiveRecord::Base
	belongs_to :player
	has_many :weight_stats
	has_many :height_stats
	has_many :squat_stats
	has_many :benchpress_stats
end
