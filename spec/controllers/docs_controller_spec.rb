require 'spec_helper'

describe DocsController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'examples'" do
    it "returns http success" do
      get 'examples'
      response.should be_success
    end
  end

end
