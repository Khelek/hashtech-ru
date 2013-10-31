class Screenshot < ActiveRecord::Base
  attr_accessible :image, :project_id

  validates :image, presence: true

  belongs_to :project
  
  mount_uploader :image, ImageUploader
end
