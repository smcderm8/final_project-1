class ScoresController < ApplicationController
  def index
    @scores = Score.all

    render("scores/index.html.erb")
  end

  def show
    @score = Score.find(params[:id])

    render("scores/show.html.erb")
  end

  def new
    @score = Score.new

    render("scores/new.html.erb")
  end

  def create
    @score = Score.new

    @score.score = params[:score]
    @score.match_id = params[:match_id]
    @score.player_id = params[:player_id]
    @score.hole_id = params[:hole_id]

    save_status = @score.save

    if save_status == true
      redirect_to("/matches/#{@score.match_id}", :notice => "Score created successfully.")
    else
      render("scores/new.html.erb")
    end
  end

  def edit
    @score = Score.find(params[:id])

    render("scores/edit.html.erb")
  end

  def update
    @score = Score.find(params[:id])

    @score.score = params[:score]
    @score.match_id = params[:match_id]
    @score.player_id = params[:player_id]
    @score.hole_id = params[:hole_id]

    save_status = @score.save

    if save_status == true
      redirect_to("/matches/#{@score.match_id}", :notice => "Score updated successfully.")
    else
      render("scores/edit.html.erb")
    end
  end

  def destroy
    @score = Score.find(params[:id])

    @score.destroy

    if URI(request.referer).path == "/scores/#{@score.id}"
      redirect_to("/", :notice => "Score deleted.")
    else
      redirect_to("/matches/#{@score.match_id}", :notice => "Score deleted.")
    end
  end
end
