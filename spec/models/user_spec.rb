require 'spec_helper'

describe User do

  describe '.create' do
    it 'creates a User' do
      user = FactoryGirl.create(:user)
      user.should be_an_instance_of(User)
      User.name.should eq 'Bob'
      User.email.should eq 'bob@gmail.com'
      User.password.should eq 'a'
      User.password_confirmation.should eq 'a'
    end
  end

  describe '#banks' do
    it 'has banks' do
      user = FactoryGirl.create(:user)
      user.banks << bank
      user.banks.count.should eq 1
    end
  end
end
