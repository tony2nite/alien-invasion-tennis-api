class Player < ActiveRecord::Base
	has_many :player_matches
	has_many :matches, :through => :player_matches

	validates :name, :presence => true
	attr_accessible :name
end
