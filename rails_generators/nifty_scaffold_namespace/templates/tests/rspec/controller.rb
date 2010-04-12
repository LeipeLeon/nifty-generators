require File.dirname(__FILE__) + '/../../spec_helper'

describe <%= plural_class_name %>Controller do

  integrate_views

  before(:all) do
    @user = User.make
    @<%= singular_name %> = <%= namespaced_class_name %>.make(:user_id => @user.id)
  end

  before(:each) do
    login_as @user
  end

  after(:all) do
    <%= namespaced_class_name %>.destroy_all
    User.destroy_all
  end

  <%= controller_methods 'tests/rspec/actions' %>

end
