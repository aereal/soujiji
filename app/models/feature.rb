class Feature < ActiveRecord::Base
  include Enumerize

  enumerize :answer_type, in: [:boolean, :descriptive]

  belongs_to :topic

  validates :title, presence: true
  validates :answer_type, inclusion: {in: %w(boolean descriptive)}
end
