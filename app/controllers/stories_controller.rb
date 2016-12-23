class StoriesController < ApplicationController
  def index
    @story = Story.order("RANDOM()").first
  end


  def new
    @story = Story.new
  end

  def create
    #params object in the first line of our method is a Hash that contains all of the content that the user submitted
    @story = Story.new(story_params)

    # user only redirected to the sotry list if the model passes its validation checks.
    if @story.save #returns true
      flash[:notice] = 'Story submission succeeded'
      redirect_to stories_path
    else # it is false and have them submit it again
      render action: 'new'
    end
    
  end


    def story_params
      params.require(:story).permit(:name, :link)
    end

  end
