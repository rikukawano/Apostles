class Stat < ActiveRecord::Base
	belongs_to :player
	has_many :weight_stat
	has_many :height_stat
	has_many :squat_stat
	has_many :benchpress_stat
end
