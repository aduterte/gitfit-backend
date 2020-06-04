class AddNameToRoutine < ActiveRecord::Migration[6.0]
  def change
    add_column :routines, :name, :string
  end
end
