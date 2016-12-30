class User < ApplicationRecord
  has_many :articles
  validates :username, uniqueness: true
  has_secure_password

end
