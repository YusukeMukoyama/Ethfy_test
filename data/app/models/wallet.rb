class Wallet < ActiveRecord::Base
  belongs_to :user
  has_many :transactions

  def self.toqr(address)
    text = address
    RQRCode::QRCode.new(text).to_img.resize(200, 200).to_data_url
  end

  def self.subtract(wallet_id, amount)
    user_wallet = Wallet.find(wallet_id)
    current_amount = Wallet.find(wallet_id).amount
    changed_amount = current_amount - amount
    user_wallet.update(:amount => changed_amount)
  end

  def self.new_user_wallet
    latest_user_id = User.last.id
    new_wallet = Wallet.new(:user_id => latest_user_id)
    new_wallet.save!
  end

end