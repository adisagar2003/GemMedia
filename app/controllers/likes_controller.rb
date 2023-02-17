class LikesController < ApplicationController
    def index
      @likes = Like.where("post_id= ?",params[:post_id]);
      
      for @like in @likes
        @user = User.find(@like.user_id);
        @like.user = @user
      end
    
    end
    def create
      @post_id = params[:post_id]

      if Like.where(user_id:current_user.id)==[]
        @like = Like.new(user_id:current_user.id,post_id:@post_id);
        @like.save
        redirect_to "/"
      else
     
        redirect_to "/"
        flash.alert="User has already liked"
      end
      
    
  
      end

    private
    def already_liked?
        Like.where(user_id: current_user.id, post_id:
        params[:post_id]).exists?
      end
    def destroy

    end
end