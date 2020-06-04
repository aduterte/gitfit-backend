class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :body_part, :equipment, :difficulty, :image1, :image2, :description
end


