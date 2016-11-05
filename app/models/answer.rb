class Answer < ApplicationRecord

  has_attached_file :image, styles: { medium: "400x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  belongs_to :question
  has_many :comments

end
