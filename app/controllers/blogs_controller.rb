class BlogsController < ApplicationController
  respond_to :json

  def index
    @blogs = Blog.all
    render ('index.json.jbuilder')
  end

  def show
    @blog = Blog.find(params[:id])
    render ('show.json.jbuilder')
  end

  def update
  	@blog = Blog.find(params[:id])
  	@blog.update(params[:blog].permit(:likes, :dislikes))
  	render ('update.json.jbuilder')
  end

end
