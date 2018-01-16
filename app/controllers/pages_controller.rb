class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

# Commented out since I'm not sure I want to use this anymore in my portfolio
  # def tech_news
  # 	@tweets = SocialTool.twitter_search
  # end
end