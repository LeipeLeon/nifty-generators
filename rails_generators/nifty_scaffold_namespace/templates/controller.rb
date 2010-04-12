class <%= plural_class_name %>Controller < <%= namespace %>Controller
  # before_filter :login_required
  before_filter :find_<%= singular_name %>, :except => [:index, :new, :create]

  <%= controller_methods :actions %>

protected

  def find_<%= singular_name %>
    @<%= singular_name %> = <%= namespaced_class_name %>.find(params[:id])
  end

end
