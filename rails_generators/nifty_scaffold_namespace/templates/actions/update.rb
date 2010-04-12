  def update
    if @<%= singular_name %>.update_attributes(params[:<%= singular_name %>])
      flash[:success] = t('flash.model.updated', :model => <%= namespaced_class_name %>.human_name )
      # redirect_to <%= item_path('url') %>
      redirect_to <%= plural_name %>_path
    else
      flash[:error] = t('flash.model.update_error', :model => <%= namespaced_class_name %>.human_name )
      render :action => 'edit'
    end
  end
