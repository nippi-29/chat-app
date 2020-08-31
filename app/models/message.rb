class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true, unless: :was_attachd?

  def was_attachd?
    self.image.attached?
  end
end
