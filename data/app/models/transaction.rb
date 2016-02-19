class Transaction < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :user

  def self.add_log(user_id, wallet_id, receiver_wallet, sender_wallet, send_amount)    
    new_transaction = Transaction.new(:user_id => user_id, :wallet_id => wallet_id, :reciever => receiver_wallet, :sender => sender_wallet, :amount => send_amount)
    new_transaction.save!
  end
end
