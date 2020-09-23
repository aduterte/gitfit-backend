class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users.to_json #(exclude:[ :routines, :posts])
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        # byebug
        render json: user
    end

    def create 
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.valid?
            user.save
            payload = {user_id: user.id}
            token = encode(payload)
            # byebug
            # render :json => {user: user, token: token}
            render :json => {user: UserSerializer.new(user), token: token}
        else
            render json: user.errors.full_messages
        end
    end

    def login 
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            # byebug
            payload = {user_id: user.id}
            token = encode(payload)
            render :json => {user: UserSerializer.new(user), token: token}
            # render :json => {user: user.as_json(include: {routines: {:include => :workouts}}), token: token}
        else 
            render json: {error: "User not found"}
        end
    end

    def token_authenticate
    
    token = request.headers["Authenticate"]
    # byebug
    user = User.find(decode(token)["user_id"])
   
    render json: user
    # render :json => {user: user.as_json(include: [:movies] ,except: [:created_at, :updated_at])}
    end

    def test_login
        user = User.find(params[:id])
        token = "token"
        render json: {
            user: UserSerializer.new(user),
            token: token
        }
        
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :goal_weight, :avatar, :zipcode, :age, :weight, :gender, :height, :trainer, :admin)
    end
end

# def followed
#     self.object.followed.map do |follow|
#       # byebug
#       {id: follow.follow.id,
#       name: follow.follow.name,
#       avatar: follow.follow.avatar,
#       zipcode: follow.follow.zipcode,
#       posts: follow.follow.posts.map{|post|
#         {content: post.content,
#         user:  
#           {id: post.user.id,
#           name: post.user.name,
#           avatar: post.user.avatar},
#         routine: post.routine,
#         created_at: post.created_at}} 
#       }
#     end


