class ChangeLinkedColumnsToIntegerForPlayerMatches < ActiveRecord::Migration
	def up
		change_column :player_matches, :player_id, :integer
		change_column :player_matches, :match_id, :integer
	end
	def down
		change_column :player_matches, :player_id, :string
		change_column :player_matches, :match_id, :string
	end
end
