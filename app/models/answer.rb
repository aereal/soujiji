class Answer < ActiveRecord::Base
  belongs_to :feature
  belongs_to :library
end
