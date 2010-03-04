class <%= plural_class_name %>Controller < ApplicationController
  # before_filter :login_required
  before_filter :find_<%= singular_name %>, :except => [:index, :new, :create]

  <%= controller_methods :actions %>

protected

  def find_<%= singular_name %>
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
  end

end
