class HomeController < ApplicationController
  def index
    if @posts = Post.create(params[:post])
  # success
  end
end

end

