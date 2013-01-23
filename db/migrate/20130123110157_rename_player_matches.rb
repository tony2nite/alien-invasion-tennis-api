class RenamePlayerMatches < ActiveRecord::Migration
  def up
  	rename_table :players_matches, :player_matches
  end

  def down
  	rename_table :player_matches, :players_matches
  end
end
