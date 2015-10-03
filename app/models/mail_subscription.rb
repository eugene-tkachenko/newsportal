class MailSubscription < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }
end
