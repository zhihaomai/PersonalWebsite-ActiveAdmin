class BlogsController < ApplicationController
  respond_to :json

  def index
    @blogs = Blog.all
  end
end
