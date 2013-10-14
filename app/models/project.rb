class Project < ActiveRecord::Base
  attr_accessible :completed, :description, :name, :partner_id, :repository, :site
  attr_accessible :screenshots_attributes

  has_many :screenshots, dependent: :destroy
  accepts_nested_attributes_for :screenshots
  belongs_to :partner
end
