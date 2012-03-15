class Library < ActiveRecord::Base
  validates :name, :language, presence: true

  belongs_to :language
end
