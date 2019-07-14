class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :registerable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
  validates :email, :password, presence: true
end

# 852Train-like_a/Fighter!
