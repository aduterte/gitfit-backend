class CreateUnlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :unlocks do |t|
      t.integer :user_id
      t.integer :achievement_id

      t.timestamps
    end
  end
end
