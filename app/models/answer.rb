class Answer < ActiveRecord::Base
  include Enumerize

  enumerize :type, in: [:boolean, :descriptive]

  belongs_to :feature
  belongs_to :library

  validates :type, inclusion: {in: %w(boolean descriptive)}
  validates :content, presence: true, if: 'type && type.descriptive?'
  validates :content, inclusion: {in: [true, false]}, if: 'type && type.boolean?'
end
