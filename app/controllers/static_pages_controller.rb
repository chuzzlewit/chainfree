class StaticPagesController < ApplicationController
  def home
    @instavar = [1,2,3,4,5]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end
  def about
  end
  def contact
  end
  def help
    redirect_to(:controller => 'static_pages', :action => 'other_help')
  end
end
