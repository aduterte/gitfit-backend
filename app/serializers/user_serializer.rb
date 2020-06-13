class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :goal_weight, :avatar, :zipcode, :age, :gender, :height, :trainer, :admin
  has_many :routines
  has_many :posts
  has_many :weights
  # def routines 
  #   self.object.routines.map do |routine|
  #     {id: routine.id,
  #     name: routine.name,
  #     workouts: routine.workouts}
  #   end
  # end
  def weights 
    self.object.weights.order("created_at ASC").map do |weight|
      {lbs: weight.lbs,
      kg: weight.kg,
    created_at: weight.created_at}
    end
  end
  # self.appearances.order("rating DESC").map {|appearance| appearance.episode}

end


  