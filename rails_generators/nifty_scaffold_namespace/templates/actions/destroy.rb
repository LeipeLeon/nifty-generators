  def destroy
    @<%= singular_name %>.destroy
    respond_to do |format|
      format.html {
        flash[:success] = t('flash.model.destroyed', :model => <%= namespaced_class_name %>.human_name )
        redirect_to <%= items_path('url') %>
      }
      format.js   { render :layout => false }
    end
  end
