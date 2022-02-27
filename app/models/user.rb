class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable,
  :rememberable, :validatable

  has_one :user_profile, dependent: :destroy
  has_one :cart, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validate :validate_username

  attr_writer :login

  after_create :init_user_profile
  after_create :init_cart

  def init_user_profile
    self.create_user_profile!
  end

  def init_cart
    self.create_cart!
  end

  def login
    @login || username || email
  end

  def validate_username
    self.username = self.email
    errors.add(:username, :invalid) if User.where(email: username).exists?
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
        where(conditions.to_hash).where(['lower(username) = :value OR lower(email) = :value', {value: login.downcase}]).first
    elsif conditions.key?(:username) || conditions.key?(:email)
        where(conditions.to_h).first
    end
  end
end
