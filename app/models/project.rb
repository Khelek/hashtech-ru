class Project < ActiveRecord::Base
  attr_accessible :completed, :description, :name, :partner_id, :repository, :site

  belongs_to :partner
end
