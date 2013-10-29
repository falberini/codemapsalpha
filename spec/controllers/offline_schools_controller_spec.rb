require 'spec_helper'

describe OfflineSchoolsController do

	describe "Get index" do
		it "should render index.html.erb" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "Get search-based map" do
		it "should render new.html.erb" do
      get :new
      expect(response).to render_template :new`
    end
  end

end
