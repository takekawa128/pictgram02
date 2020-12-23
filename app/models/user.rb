class User < ApplicationRecord
  # 正規表現
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  VALID_email_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validation：データが有効なものかどうかを判定
  #今回はpersenceで「空白かどうかを判定する」
  #persence: trueが未入力だった場合、データの保存が失敗する
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, format: { with: VALID_email_REGEX }
  validates :password, presence: true, length: { in: 8..32 }, format: { with: VALID_PASSWORD_REGEX }
  
  has_secure_password
  
end
