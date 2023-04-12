class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :validatable, :confirmable, :omniauthable

  enum role: [:user, :admin]
end
