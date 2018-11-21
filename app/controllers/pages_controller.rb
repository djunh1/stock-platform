class PagesController < ApplicationController
  def home
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
