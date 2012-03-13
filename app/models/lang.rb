class Lang < ActiveRecord::Base
  validates :name, presence: true

  has_many :packages
end
