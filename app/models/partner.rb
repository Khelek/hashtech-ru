class Partner < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :site
  attr_accessible :links_attributes
  
  validates :name, presence: true

  has_many :links, dependent: :destroy
  has_many :projects
  accepts_nested_attributes_for :links
  accepts_nested_attributes_for :projects
  
  mount_uploader :logo, ImageUploader
end
