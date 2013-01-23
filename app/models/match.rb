class Match < ActiveRecord::Base
	has_many :player_matches
	has_many :players, :through => :player_matches

	accepts_nested_attributes_for :players

	attr_accessible :players_attributes
end
