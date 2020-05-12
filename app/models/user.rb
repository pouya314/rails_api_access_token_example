class User < ApplicationRecord
  has_secure_password  
  has_one :api_key
  validates_uniqueness_of :email  
end
