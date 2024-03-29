class Language < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: true

  has_many :libraries
end
