# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  content    :text             not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "attributes" do
    it { should validate_presence_of(:content) }
    it { should belong_to(:user)}
    it { should have_many(:comments)}
  end
end



  describe ".title" do
  it "gives title of post" do
    post = Post.create(title: 'test', content: 'this is the content')
    expect(post.title).to eq('test')
    expect(post.content).to eq('this is the content')
  end
end
