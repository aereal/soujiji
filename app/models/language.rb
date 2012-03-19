class Language < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :libraries
end
