class User < ActiveRecord::Base
  has_many :links, dependent: :destroy
  has_many :votes, through: :links
  has_secure_password
end
