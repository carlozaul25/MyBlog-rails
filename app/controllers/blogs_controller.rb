class BlogsController < ApplicationController
	def index
		@blog = Blog.all
	end

	def new
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.save
		redirect_to @blog
	end

	def show
		@blog = Blog.find(params[:id])
	end

	private

		def blog_params
			params.require(:blog).permit(:title, :body)
		end
	end
