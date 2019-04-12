require 'rails_helper'
describe User do
  describe '#create' do
    it 'valid all column' do
      user = build(:user)
      expect(user).to be_valid
    end
    it 'invalid without name' do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it 'invalid without email' do
      user = build(:user,email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it 'invalid duplicate email address' do
      user = create(:user)
      another_user = build(:user,email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
  end
end
