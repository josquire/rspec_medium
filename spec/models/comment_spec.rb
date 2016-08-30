# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  user_id    :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "attributes" do
    it { should validate_presence_of(:content) }
    it { should belong_to(:user)}
    it { should belong_to(:post)}
  end
end



  describe ".content" do
  it "gives comments of post" do
    comment = Comment.create(content: 'this is the content')
    expect(comment.content).to eq('this is the content')
  end
end
