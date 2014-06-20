class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  validates :title, length: { minimum: 10 }, presence: true
  validates :description, length: { minimum: 20}, presence: true
end
