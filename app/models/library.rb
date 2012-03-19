class Library < ActiveRecord::Base
  validates :name, :language, presence: true

  belongs_to :language
  has_many :answers
end
