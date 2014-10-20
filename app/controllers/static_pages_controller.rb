class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      #if @feed_items == nill
      #  @feed_items = Micropost.new
      #end
    end
  end

  def help
  end

  def about
  end

  def about
  end
end
