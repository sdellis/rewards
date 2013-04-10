class ChoresController < ApplicationController
  def create
    kid = Kid.find(params[:kid_id])
    @chore = Chore.new
    @chore.points = params[:points]
    @chore.title = ''
    @chore.kid_id = kid.id
    @chore.save!
    redirect_to(kids_path, :notice => "Rewarded <a href=\"#{kid_path(kid.id)}\">#{kid.name}</a>".html_safe)
  end

end
