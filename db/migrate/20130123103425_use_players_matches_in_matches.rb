class UsePlayersMatchesInMatches < ActiveRecord::Migration
  def up
    add_column :matches, :players_matches_id, :integer
    remove_column :matches, :player_1_id
    remove_column :matches, :player_2_id
  end

  def down
    remove_column :matches, :players_matches_id
    add_column :players, :player_1_id, :null => false
    add_column :players, :player_2_id, :null => false
  end
end
