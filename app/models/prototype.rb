class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  # 画像の種類やサイズに関するバリデーションを追加する場合
  # validates :image, presence: true, content_type: ['image/png', 'image/jpeg', 'image/jpg'], size: { less_than: 5.megabytes }

end
