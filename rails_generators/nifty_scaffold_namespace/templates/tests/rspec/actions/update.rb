  it "update action should render edit template when model is invalid" do
    <%= namespaced_class_name %>.any_instance.stubs(:valid?).returns(false)
    put :update, :id => @<%= singular_name %>.id
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    <%= namespaced_class_name %>.any_instance.stubs(:valid?).returns(true)
    put :update, :id => @<%= singular_name %>.id
    flash[:success].should_not be_nil
    # response.should redirect_to(<%= item_path_for_spec('url') %>)
    response.should redirect_to(<%= items_path('url') %>)
  end
