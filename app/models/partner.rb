class Partner < ActiveRecord::Base
  attr_accessible :description, :id, :logo, :name

  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links
end
