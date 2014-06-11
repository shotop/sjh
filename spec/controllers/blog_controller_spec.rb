require 'spec_helper.rb'

describe BlogController, :type => :controller do

  describe "#index" do

    it "renders the index page" do
      get :index
      expect(response).to render_template("index")
    end

  end
end