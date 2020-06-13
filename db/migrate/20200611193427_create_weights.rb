class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.float :lbs
      t.float :kg
      t.integer :user_id

      t.timestamps
    end
  end
end
