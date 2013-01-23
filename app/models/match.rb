class Match < ActiveRecord::Base
	has_many :player_matches
	has_many :players, :through => :player_matches

	accepts_nested_attributes_for :player_matches, :reject_if => lambda { |a| a[:player_id].blank? }

	attr_accessible :player_matches_attributes
end
