class User < ApplicationRecord
  has_secure_passwo

  validates :first_name, presence: true, lenght: { in: 2..25 }
  validates :last_name, presence: true, lenght: { in: 2..25 }
  validates :phone, presence: true, uniqueness: { case_sensitive: true }
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates_format_of :email, with: /\A\S+@.+\.\S+\z/
  validates :password, presence: true, length: { minimum: 8 }

  def welcome
    self.first_name
  end
end
