require 'spec_helper'

describe User do
  subject { User.new }
  it "must validate length of username" do
    subject.username = "abc"
    subject.valid?.must_equal false
  end
end
