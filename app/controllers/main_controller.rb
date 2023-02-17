class MainController < ApplicationController
    def index 
        if current_user
            @users = current_user
      
            @posts = Post.all;
        else
            redirect_to new_user_session_path, notice: 'You are not logged in.'
          end
    end

    def about
        if current_user
            @users = current_user
        else
          end

    def users 
    @users = current_user
    @posts = Post.all


    end
    end 

end
