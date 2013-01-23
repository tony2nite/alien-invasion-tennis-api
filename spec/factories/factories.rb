# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do


	factory :match do
	end
	
	factory :player do
		name "Tom"
	end

	factory :players_match do
		player_id 1
		match_id 1
	end
end