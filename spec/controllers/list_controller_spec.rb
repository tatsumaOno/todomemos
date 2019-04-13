require 'rails_helper'

describe ListController do
  describe 'GET #new' do
    it "render the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested list to @list" do
      list = create(:list)
      get :edit,params: {id: list}
      expect(assigns(:list)).to eq list
    end

    it "renders the :edit template" do
      list = create(:list)
      get :edit,params: {id: list}
      expect(response).to render_template :edit
    end
  end
end

describe TopController do
  describe 'GET #index' do
    it 'populates an array of list ordered by created_at DESC' do
        list = create_list(:list, 3)
        get :index
        expect(assigns(:list)).to match(list)
    end

    it 'renders the :index template' do

    end
  end

end
