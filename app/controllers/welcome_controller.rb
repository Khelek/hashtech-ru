class WelcomeController < ApplicationController
  def index
    @projects = Project.all
    @partners = Partner.last 3
  end

  def about
  end

  def contacts
  end
end
