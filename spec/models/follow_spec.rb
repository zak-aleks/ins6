require 'rails_helper'
RSpec.describe Follow, type: :model do
  it { should belong_to :follower }
  it { should belong_to :followee }
  it { should validate_uniqueness_of(:follower_id).scoped_to(:followee_id) }
  it { should validate_uniqueness_of(:followee_id).scoped_to(:follower_id) }

end
