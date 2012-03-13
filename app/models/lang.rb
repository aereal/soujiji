class Lang < ActiveRecord::Base
  validates :name, presence: true
end
