class Network < ActiveRecord::Base
  attr_accessible :id, :logo, :name

  has_one :link
  accepts_nested_attributes_for :link
  
  mount_uploader :logo, ImageUploader
end
