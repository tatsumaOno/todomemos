require 'rails_helper'
describe User do
  describe '#create' do
    it 'invalid without name' do
      user = User.new(name: "",email: "hoge@gmail.com",password: '12345678910',password_confirmation: "12345678910")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it 'invalid without email' do
      user = User.new(name: "tarou",email: "",password: '12345678910',password_confirmation: "12345678910")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
  end
end
