class BlogsController < ApplicationController

    def index
        @blogs = Blog.all
    end

    def new
        @blog = Blog.new
    end

    def create
        p = params.require(:blog).permit(:title)
        @blog = Blog.new(p)	
        @blog.save
        redirect_to root_path
    end

end
