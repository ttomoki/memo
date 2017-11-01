class PostsController < ApplicationController
	def index
      @posts = Post.all
	end

	def show
      @post = Post.find(params[:id])
	end

	def new
	  @post = Post.new
	end

	def create
      Post.create(create_params)
      redirect_to :root
	end

	def all
      @posts = Post.all
    end

	private
	  def create_params
	  	params.require(:post).permit(:question,:answer,:link_url,:question_image)
	  end
end
