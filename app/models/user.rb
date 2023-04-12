class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :validatable, :confirmable, :omniauthable, :registerable

  enum role: [:user, :admin]
end
