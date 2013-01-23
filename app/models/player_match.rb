class PlayerMatch < ActiveRecord::Base
	belongs_to :match
	belongs_to :player

	attr_accessible :player_id, :match_id
end
