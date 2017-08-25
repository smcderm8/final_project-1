class HolesController < ApplicationController
  def index
    @courses = Course.all
    

    render("holes/index.html.erb")
  end

  def show
    @hole = Hole.find(params[:id])

    render("holes/show.html.erb")
  end

  def new
    @hole = Hole.new

    render("holes/new.html.erb")
  end

  def create
    @hole = Hole.new

    @hole.course_id = params[:course_id]
    @hole.hole_number = params[:hole_number]
    @hole.par = params[:par]
    @hole.yardage = params[:yardage]
    @hole.handicap = params[:handicap]

    save_status = @hole.save

    if save_status == true
      redirect_to("/holes/#{@hole.id}", :notice => "Hole created successfully.")
    else
      render("holes/new.html.erb")
    end
  end

  def edit
    @hole = Hole.find(params[:id])

    render("holes/edit.html.erb")
  end

  def update
    @hole = Hole.find(params[:id])

    @hole.course_id = params[:course_id]
    @hole.hole_number = params[:hole_number]
    @hole.par = params[:par]
    @hole.yardage = params[:yardage]
    @hole.handicap = params[:handicap]

    save_status = @hole.save

    if save_status == true
      redirect_to("/holes/#{@hole.id}", :notice => "Hole updated successfully.")
    else
      render("holes/edit.html.erb")
    end
  end

  def destroy
    @hole = Hole.find(params[:id])

    @hole.destroy

    if URI(request.referer).path == "/holes/#{@hole.id}"
      redirect_to("/", :notice => "Hole deleted.")
    else
      redirect_to(:back, :notice => "Hole deleted.")
    end
  end
end
