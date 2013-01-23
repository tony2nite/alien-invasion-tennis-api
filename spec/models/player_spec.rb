require 'spec_helper'

describe Player do
	describe "should be able to add matches to players" do
		it "Match should have related players" do
			player_1 = FactoryGirl.create :player
			player_1.matches.length.should == 0
			match = player_1.matches.create!
			player_1.matches.length.should == 1
			match.players.length.should == 1

			player_2 = FactoryGirl.create :player
			player_2.matches.length.should == 0
			match.players << player_2
			match.save

			match.players.length.should == 2
		end
	end
end
