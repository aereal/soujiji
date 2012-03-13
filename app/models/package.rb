class Package < ActiveRecord::Base
  validates :name, :lang, presence: true

  belongs_to :lang
end
