  it "destroy action should destroy model and redirect to index action" do
    delete :destroy, :id => @<%= singular_name %>.id
    response.should redirect_to(<%= items_path('url') %>)
    <%= namespaced_class_name %>.exists?(@<%= singular_name %>.id).should be_false
  end
