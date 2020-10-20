class User < ApplicationRecord
  has_one :cart
  has_one :card
  has_many :orders
  has_many :addresses
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/, message: 'は@を含む必要があります' }
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])\w{6,}\z/.freeze
  validates :password,
            format: { with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください' }
end
