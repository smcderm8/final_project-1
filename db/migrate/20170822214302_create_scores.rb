class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :match_id
      t.integer :player_id
      t.integer :hole_id

      t.timestamps

    end
  end
end
