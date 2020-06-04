class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.string :body_part, array: true
      t.string :equipment, array: true
      t.string :difficulty
      t.string :image1
      t.string :image2
      t.string :description

      t.timestamps
    end
  end
end


