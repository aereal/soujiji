class Topic < ActiveRecord::Base
  has_many :features

  validates_associated :features
end
