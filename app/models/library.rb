class Library < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  validates :name, :language, presence: true

  belongs_to :language
  has_many :answers
end
