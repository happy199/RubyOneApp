class Chefprod < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validate :email, presence: true, length: {maximum: 255},
           format: {with: VALID_EMAIL_REGEX}
end