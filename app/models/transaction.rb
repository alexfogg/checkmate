class Transaction < ActiveRecord::Base
attr_accessible :date, :amt, :to_whom, :deposit, :withdraw
belongs_to :banks
end
