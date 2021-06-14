class PostsController < ApplicationController
    protect_from_forgery with: :null_session
    def index
       @posts = Post.order("created_at DESC")
    end
    
    def create
        Post.create(text: params[:text])
    end
end
