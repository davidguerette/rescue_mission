class Answer < ActiveRecord::Base
  belongs_to :question

  validates :question_id, presence: true
  validates :description, length: {minimum: 50}, presence: true
end
