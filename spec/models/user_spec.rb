require 'rails_helper'
RSpec.describe User, type: :model do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should have_many :posts }
  it { should have_many :likes }
  it { should have_many :followed_users }
  it { should have_many :followees }
  it { should have_many :following_users }
  it { should have_many :followers }
  it { should have_many :followers }
end
