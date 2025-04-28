class PostsController < ApplicationController
    def index
       @posts = Post.all
       Rails.logger.info @posts
    end


    def show
        @post = Post.find(params[:id])
    end
    
    def create
    @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update
        show(params[:id])
        @post.update(post_params)
    end
end
  