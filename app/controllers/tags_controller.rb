class TagsController < ApplicationController

  # GET /tags.json
  def index
    @tags = Tag.all

    respond_to do |format|
      # just tags
      format.json { render json: @tags, :except => [:created_at, :updated_at]}
    end
  end
  
end
