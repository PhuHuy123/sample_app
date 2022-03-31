class StaticPagesController < ApplicationController
  # @micropost = current_user.microposts.build if logged_in?

  # @feed_items = current_user.feed.paginate(page: params[:page]) if logged_in?
  def home
    # @micropost = current_user.microposts.build if logged_in?
    if logged_in?
      
      # binding.break  
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
