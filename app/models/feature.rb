class Feature < ActiveRecord::Base
  belongs_to :topic

  validates :title, presence: true
end
