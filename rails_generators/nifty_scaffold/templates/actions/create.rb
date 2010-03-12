  def create
    @<%= singular_name %> = <%= class_name %>.new(params[:<%= singular_name %>])
    respond_to do |format|
      if @<%= singular_name %>.save
        format.html {
          flash[:success] = "Successfully created <%= name.underscore.humanize.downcase %>."
          redirect_to <%= item_path('url') %>
        }
        format.js   { render :layout => false }
      else
        format.html {
          render :action => 'new'
        }
        format.js   { render :layout => false }
      end
    end
  end
