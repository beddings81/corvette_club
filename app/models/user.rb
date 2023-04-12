class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :validatable, :confirmable, :omniauthable

  enum role: [:user, :admin]
end
