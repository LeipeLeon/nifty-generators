  it "edit action should render edit template" do
    get :edit, :id => @<%= singular_name %>.id
    response.should render_template(:edit)
  end
