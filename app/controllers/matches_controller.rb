class MatchesController < ApplicationController
  def index
    @matches = Match.all

    render("matches/index.html.erb")
  end

  def show
    @match = Match.find(params[:id])
    
    @holes = @match.course.holes
    
    @scoreboard_array = []

    render("matches/show.html.erb")
  end

  def new
    @match = Match.new

    render("matches/new.html.erb")
  end

  def create
    @match = Match.new

    @match.name = params[:name]
    @match.course_id = params[:course_id]
    @match.tee_time = params[:tee_time]
    @match.winning_team_id = params[:winning_team_id]
    @match.home_team_id = params[:home_team_id]
    @match.away_team_id = params[:away_team_id]
    @match.booth_player_1_id = params[:booth_player_1_id]
    @match.booth_player_2_id = params[:booth_player_2_id]
    @match.kellogg_player_1_id = params[:kellogg_player_1_id]
    @match.kellogg_player_2_id = params[:kellogg_player_2_id]

    save_status = @match.save

    if save_status == true
      redirect_to("/matches/#{@match.id}", :notice => "Match created successfully.")
    else
      render("matches/new.html.erb")
    end
  end

  def edit
    @match = Match.find(params[:id])

    render("matches/edit.html.erb")
  end

  def update
    @match = Match.find(params[:id])

    @match.name = params[:name]
    @match.course_id = params[:course_id]
    @match.tee_time = params[:tee_time]
    @match.winning_team_id = params[:winning_team_id]
    @match.home_team_id = params[:home_team_id]
    @match.away_team_id = params[:away_team_id]
    @match.booth_player_1_id = params[:booth_player_1_id]
    @match.booth_player_2_id = params[:booth_player_2_id]
    @match.kellogg_player_1_id = params[:kellogg_player_1_id]
    @match.kellogg_player_2_id = params[:kellogg_player_2_id]

    save_status = @match.save

    if save_status == true
      redirect_to("/matches/#{@match.id}", :notice => "Match updated successfully.")
    else
      render("matches/edit.html.erb")
    end
  end

  def destroy
    @match = Match.find(params[:id])

    @match.destroy

    if URI(request.referer).path == "/matches/#{@match.id}"
      redirect_to("/", :notice => "Match deleted.")
    else
      redirect_to(:back, :notice => "Match deleted.")
    end
  end
end
