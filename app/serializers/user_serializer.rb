class UserSerializer < ActiveModel::Serializer
  attributes :id,:name, :email, :avatar, :zipcode, :age, :gender, :height, :trainer, :admin, :routines

  def routines 
    self.object.routines.map do |routine|
      {id: routine.id,
      name: routine.name,
      workouts: routine.workouts}
    end
  end

end


  