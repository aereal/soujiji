class Package < ActiveRecord::Base
  validates :name, presence: true
end
