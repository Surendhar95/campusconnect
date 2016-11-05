class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  validates :body, presence: "true",
                   length: {maximum: 50}
  validates :tags, presence: "true",length: {maximum: 30}
end
