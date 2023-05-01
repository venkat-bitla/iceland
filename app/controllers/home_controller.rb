class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_user, only: [:show]
  def index
    @should_render_navbar = true
  end

  def appearance
    @should_render_navbar = true
  end

  def show
    redirect_to root_path if @user.nil?
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end

end