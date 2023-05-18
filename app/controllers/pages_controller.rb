class PagesController < ApplicationController
  def about
    @title="About Page"
  end

  def blog
  end

  def contact
  end

  def error
  end

  def home
    @projects = Project.all
  end
end
