class Network < ActiveRecord::Base
  attr_accessible :logo, :remote_logo_url, :name

  validates :name, presence: true
  
  has_one :link
  accepts_nested_attributes_for :link
  
  mount_uploader :logo, ImageUploader
end
