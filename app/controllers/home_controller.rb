class HomeController < ApplicationController
  def index
    @ideas = Idea.joins(:user).order("ideas . updated_at DESC").includes([user: :profile]).page(params[:page]).per(8)
    @slides = Idea.joins(:user).order('RAND()').limit(5)
  end
end
