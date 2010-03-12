  def new
    @<%= singular_name %> = <%= class_name %>.new
    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end
