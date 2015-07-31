require 'spec_helper'

describe Hello do
  context "first test" do
    it "is a test" do
      @hello = Hello.new
      @hello.hello
    end
  end
end