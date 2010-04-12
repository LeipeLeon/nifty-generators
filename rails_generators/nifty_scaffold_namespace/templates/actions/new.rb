  def new
    @<%= singular_name %> = <%= namespaced_class_name %>.new
    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end
