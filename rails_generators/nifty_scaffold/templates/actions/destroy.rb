  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy
    redirect_to <%= items_path('url') %>
    flash[:success] = "Successfully destroyed <%= name.underscore.humanize.downcase %>."
  end
