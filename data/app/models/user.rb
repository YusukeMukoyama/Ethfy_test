class User < ActiveRecord::Base
  devise :two_factor_authenticatable,
         :otp_secret_encryption_key => "encryption_key"
  devise :two_factor_backupable, otp_number_of_backup_codes: 10
  serialize :otp_backup_codes, JSON
  devise :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_one :wallet
  has_many :transactions, :through => :wallet
end
