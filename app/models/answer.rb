class Answer < ActiveRecord::Base
  belongs_to :question

  validates :description, length: {minimum: 10}, presence: true
end
