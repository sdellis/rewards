class ChoresController < ApplicationController
  
  # POST /chores
  # POST /chores.json
  def create
    kid = Kid.find(params[:kid_id])
    @chore = Chore.new
    @chore.points = params[:points]
    @chore.title = ''
    @chore.kid_id = kid.id
    @chore.save!

    respond_to do |format|
      if @chore.save
        format.html { redirect_to(kids_path, :notice => "Rewarded <a href=\"#{kid_path(kid.id)}\">#{kid.name}</a> with #{@chore.points} points.".html_safe) }
        format.json { render json: @chore, status: :created, location: @chore }
      else
        format.html { redirect_to(kids_path, :notice => "Could not add points: #{@chore.errors}".html_safe) }
        format.json { render json: @chore.errors, status: :unprocessable_entity }
      end
    end

  end

end