class PomsController < ApplicationController
  
  # cancancan
  load_and_authorize_resource
  
  # before_action :set_pom, only: [:show, :edit, :update, :destroy]

  # GET /poms.json
  def index
    @poms = Pom.all

    respond_to do |format|
      # just poms
      format.json { render json: @poms, :except => [:created_at, :updated_at]}
    end
  end
   

   
  # GET /allpomswithtags.json
  def allpomswithtags
    @poms = Pom.all

    respond_to do |format|
      # option with tags in nested json (only id's)
      format.json { render json: @poms, :only => [:id], :include => {:tags => {:only => [:id]}}}
      
    end
  end
  
end
