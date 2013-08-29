class Link < ActiveRecord::Base
  attr_accessible :network_id, :partner_id, :value

  belongs_to :network
  belongs_to :partner
end
