class Key < ActiveRecord::Base
  validates :client_id,:client_secret, presence: true
  validates :client_id,:client_secret, uniqueness: true
end
