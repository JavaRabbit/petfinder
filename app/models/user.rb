class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email
  validates_uniqueness_of :email, format: {with: /@/}
end
