class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :player_1_id, :null => false
      t.integer :player_2_id, :null => false

      t.timestamps
    end
  end
end
