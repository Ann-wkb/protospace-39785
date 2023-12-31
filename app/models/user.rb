class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  validates :password, length: { minimum: 6 } # パスワードの最小文字数を6文字に設定

  has_many :prototypes, dependent: :destroy
  has_many :comments, dependent: :destroy

end
