class MicropostsController < ApplicationController
  before_filter :authenticate
  before_action :authorized_user, only: => :destroy

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      redirect_to root_path, :flash => { :success => "Micropost created!" }
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_path, :flash => { :success => "Micropost deleted!" }
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def authorized_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end
