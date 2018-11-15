class PagesController < ApplicationController

  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all.order("percent DESC")
  end

  def contact
  end
end
