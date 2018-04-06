class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:index, :new, :show, :edit,]

  def index
    @blogs = Blog.all
  end

  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    @user = current_user
      if @blog.save
        BlogMailer.create_blog_email(@blog,@user).deliver
        flash[:success] = "ブログを作成しました！"
        redirect_to blogs_path
      else
        render 'new'
      end
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      flash[:success] = "ブログを編集しました！"
      redirect_to blogs_path
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
      flash[:success] = "ブログを削除しました！"
      redirect_to blogs_path
  end

  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
