  it "show action should render show template" do
    get :show, :id => @<%= singular_name %>.id
    assigns[:<%= singular_name %>].should eql(@<%= singular_name %>)
    response.should render_template(:show)
  end
