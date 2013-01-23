class CreatePlayersMatches < ActiveRecord::Migration
  def change
    create_table :players_matches do |t|
      t.string :player_id, :null => false
      t.string :match_id, :null => false
      t.timestamps
    end
  end
end
