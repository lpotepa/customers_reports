class Transaction < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :amount, presence: true, numericality: {greater_than: 0}
end
