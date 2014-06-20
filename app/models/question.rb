class Question < ActiveRecord::Base
  has_many :answers

  validates :title, length: { minimum: 40}, presence: true
  validates :description, length: { minimum: 150}, presence: true
end
