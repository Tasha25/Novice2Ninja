class VotesController < ApplicationController
  #to store votes that have been submitted
  def create
    #we find the appropriate story record using the unique ID of Story for which a vote has been cast. This ID is given to us by Rails in the form of params[:story_id], since params[:id] is in this case reserved for a potential ID of a Vote object
    @story = Story.find(params[:story_id])
    #creates and saves a new Vote
    @story.votes.create
    respond_to do |format|
      format.html { redirect_to @story, notice: 'Vote was successfully created.' }
      format.js {}
    end
  end
end
