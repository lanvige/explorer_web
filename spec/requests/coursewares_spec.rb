require 'spec_helper'

describe "Coursewares" do
  describe "GET /coursewares" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get coursewares_path
      response.status.should be(200)
    end
  end
end
