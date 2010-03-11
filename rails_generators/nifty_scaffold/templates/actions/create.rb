  def create
    @<%= singular_name %> = <%= class_name %>.new(params[:<%= singular_name %>])
    if @<%= singular_name %>.save
      flash[:success] = "Successfully created <%= name.underscore.humanize.downcase %>."
      redirect_to <%= item_path('url') %>
    else
      render :action => 'new'
    end
  end
