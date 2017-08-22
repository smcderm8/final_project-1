class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :course_id
      t.datetime :tee_time
      t.integer :winning_team_id
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :booth_player_1_id
      t.integer :booth_player_2_id
      t.integer :kellogg_player_1_id
      t.integer :kellogg_player_2_id

      t.timestamps

    end
  end
end
