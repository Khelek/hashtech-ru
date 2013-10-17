class Project < ActiveRecord::Base
  attr_accessible :description, :name, :partner_id, :repository, :site
  attr_accessible :screenshots_attributes

  validates :name, presence: true
  validates :repository, presence: true
  
  state_machine :state, initial: :non_completed do
    state :non_completed
    state :completed

    event :completed! do
      transition :non_completed => :completed
    end

    event :non_completed! do
      transition :completed => :non_completed
    end

    event :change_state! do
      transition :non_completed => :completed
      transition :completed => :non_completed
    end
  end
  
  has_many :screenshots, dependent: :destroy
  accepts_nested_attributes_for :screenshots
  belongs_to :partner
end
