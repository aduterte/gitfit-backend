class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :routine_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
