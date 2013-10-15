class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def new
  end
end
