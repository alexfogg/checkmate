require 'spec_helper'

describe User do

  describe '.create' do
    it 'creates a User' do
      user = FactoryGirl.create(:user)
      user.should be_an_instance_of(User)
      user.name.should eq 'Bob'
      user.email.should eq 'bob@gmail.com'
      user.password.should eq 'a'
      user.password_confirmation.should eq 'a'
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
