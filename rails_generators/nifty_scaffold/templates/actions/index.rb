  def index
    @<%= plural_name %> = <%= class_name %>.all
    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end
