class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t|
      t.integer :course_id
      t.integer :hole_number
      t.integer :par
      t.integer :yardage
      t.integer :handicap

      t.timestamps

    end
  end
end
