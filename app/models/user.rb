class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation
  
  has_secure_password
  
end
