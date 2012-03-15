class Language < ActiveRecord::Base
  validates :name, presence: true

  has_many :libraries
end
