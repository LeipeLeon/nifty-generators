  def update
    if @<%= singular_name %>.update_attributes(params[:<%= singular_name %>])
      flash[:notice] = "Successfully updated <%= name.underscore.humanize.downcase %>."
      redirect_to <%= item_path('url') %>
    else
      render :action => 'edit'
    end
  end
