class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def new
  end

  def show
    @partner = Partner.find(params[:id])
  end

end
