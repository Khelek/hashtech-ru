class WelcomeController < ApplicationController
  def index
    @projects = Project.last 3
    @partners = Partner.last 3
  end

  def about
  end

  def contacts
  end
end
