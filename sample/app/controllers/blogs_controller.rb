class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]
  def index
    @blog = Blog.all
#    raise
#    .pry
    #binding.pry
  end

  def show
    #@blog = Blog.find(params[:id])
  end

  def new
#    @blog = Blog.new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create

    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice:'sucess! make miniblog'
    else
      render 'new' 
    end

    #Blog.create(title: params[:blog][:title], content:params[:blog][:content])
    #redirect_to "/blogs/new"
  end

  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end

  def edit
    #@blog = Blog.find(params[:id])
  end

  def update
    #@blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice:"edit blog done"
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "delete blog done!"
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
