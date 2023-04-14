class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :validatable, :confirmable, :omniauthable, :registerable
  
  has_many :events

  validates_presence_of :first_name, :last_name, :email

  enum role: [:user, :admin]
end
