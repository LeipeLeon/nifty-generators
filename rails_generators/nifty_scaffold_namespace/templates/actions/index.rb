  def index
    @<%= plural_name %> = <%= namespaced_class_name %>.paginate :page => params[:page] #, :order => order, :conditions => conditions
    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end
