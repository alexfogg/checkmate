class User < ActiveRecord::Base
has_secure_password
attr_accessible :name, :email, :password, :password_confirmation
has_many :banks
validates :username, :email, :presence => true

end

