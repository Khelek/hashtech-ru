class Link < ActiveRecord::Base
  attr_accessible :network_id, :partner_id, :value

  validates :partner_id, presence: true
  validates :value, presence: true
  belongs_to :network
  belongs_to :partner
end
