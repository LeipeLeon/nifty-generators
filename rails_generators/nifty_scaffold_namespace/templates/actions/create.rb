  def create
    @<%= singular_name %> = <%= namespaced_class_name %>.new(params[:<%= singular_name %>])
    respond_to do |format|
      if @<%= singular_name %>.save
        format.html {
          flash[:success] = t('flash.model.created', :model => <%= namespaced_class_name %>.human_name )
          # redirect_to <%= item_path('url') %>
          redirect_to <%= plural_name %>_path
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
