  def destroy
    @<%= singular_name %>.destroy
    respond_to do |format|
      format.html {
        flash[:success] = "Successfully destroyed <%= name.underscore.humanize.downcase %>."
        redirect_to <%= items_path('url') %>
      }
      format.js   { render :layout => false }
    end
  end
