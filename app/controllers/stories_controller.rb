class StoriesController < ApplicationController
  def index
    @current_time = Time.now
    @story = Story.find_by_name('SitePoint Forums')
    @story_random = Story.order('RANDOM()').first
  end
  
  def new
    @story = Story.new
  end
  
  def create
    params.permit!
    @story = Story.new(params[:story])
    if @story.save
      flash[:notice] = 'Story submission suceeded'
      redirect_to stories_path
    else
      render :action => 'new'
    end
  end
end
