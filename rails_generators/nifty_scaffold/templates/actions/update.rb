  def update
    if @<%= singular_name %>.update_attributes(params[:<%= singular_name %>])
      flash[:success] = t('flash.model.updated', :model => <%= class_name %>.human_name )
      redirect_to <%= item_path('url') %>
    else
      flash[:error] = t('flash.model.update_error', :model => <%= class_name %>.human_name )
      render :action => 'edit'
    end
  end
