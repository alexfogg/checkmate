class Bank < ActiveRecord::Base
attr_accessible :name, :balance
belongs_to :user



end
