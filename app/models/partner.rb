class Partner < ActiveRecord::Base
  attr_accessible :description, :id, :logo, :name, :site
  attr_accessible :links_attributes
  
  has_many :links, dependent: :destroy
  has_many :projects
  accepts_nested_attributes_for :links
  accepts_nested_attributes_for :projects
  
  mount_uploader :logo, ImageUploader
end
