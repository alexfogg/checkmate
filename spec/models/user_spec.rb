require 'spec_helper'

describe User do
  user = FactoryGirl.create(:user)

  describe '.create' do
    it 'creates a User' do
      user.should be_an_instance_of(User)
      user.username.should eq 'Bob'
      user.email.should eq 'bob@gmail.com'
      user.password.should eq 'a'
      user.password_confirmation.should eq 'a'
    end
  end

  describe '#banks' do
    it 'has banks' do
      bank = FactoryGirl.create(:bank)
      user.banks << bank
      user.banks.count.should eq 1
    end
  end
end
