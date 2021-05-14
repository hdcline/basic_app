class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        new_post = Post.create(user_id: params[:user_id], body: params[:body])

        render json: { post: new_post }
    end

    def retrieve
        render json: { posts: Post.all }
    end
end
