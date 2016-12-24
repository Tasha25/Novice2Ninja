class VotesController < ApplicationController
  def create
    #to store votes that have been submitted
    @story = Story.find(params[:story_id])
    @story.votes.create
  end
end
