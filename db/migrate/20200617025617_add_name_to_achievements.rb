class AddNameToAchievements < ActiveRecord::Migration[6.0]
  def change
    add_column :achievements, :name, :string
  end
end
