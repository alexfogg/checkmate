require 'spec_helper'

describe Bank do
  describe '.create' do
    it 'creates a Bank' do
      bank = FactoryGirl.create(:bank)
      bank.should be_an_instance_of(Bank)
      bank.name.should eq 'Bank of America'
      bank.balance.should eq 500
    end
  end

  describe '#user' do
    it 'has a user' do
      user = FactoryGirl.create(:user)
      bank = FactoryGirl.create(:bank)
      bank.user = user
      bank.user.should eq user
    end
  end
end
