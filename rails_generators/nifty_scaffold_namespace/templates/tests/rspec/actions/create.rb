  it "create action should render new template when model is invalid" do
    <%= namespaced_class_name %>.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    <%= namespaced_class_name %>.any_instance.stubs(:valid?).returns(true)
    post :create
    # response.should redirect_to(<%= item_path_for_spec('url') %>)
    response.should redirect_to(<%= items_path('url') %>)
  end
