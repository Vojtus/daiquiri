class User < ActiveRecord::Base

  # Bcrypt's stuff
  has_secure_password

  # Basic reqular expresion for email.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  # Validating values to be save
  validates :jmeno,
                presence:   true,
                uniqueness: { case_sensitive: false },
                length:     { maximum: 50 }
  validates :email,
                presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password,
                presence: true, length: { minimum: 6 }

  # Returns hash digest of the given password.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
