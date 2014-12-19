class HomeController < ApplicationController
  def index
    @posts = Post.all

  end
  def us
  @news_highlight = Post.all
  end
  def locate

  end

end