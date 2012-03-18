class Feature < ActiveRecord::Base
  belongs_to :topic

  validates :title, presence: true
  validates :answer_type, inclusion: {in: [:boolean, :selectable, :enumerative]}
end
