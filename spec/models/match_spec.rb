require 'spec_helper'

describe Match do
	describe "NEW should link to players" do
		it "Match should have related players" do
			player_1 = FactoryGirl.create :player
			player_2 = FactoryGirl.create :player
			match = Match.create!()
			match.players.length.should == 0
		end
	end
end
