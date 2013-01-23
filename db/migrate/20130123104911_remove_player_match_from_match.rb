class RemovePlayerMatchFromMatch < ActiveRecord::Migration
	def up
		remove_column :matches, :players_matches_id
	end

	def down
		add_column :matches, :players_matches_id, :integer
	end
end
