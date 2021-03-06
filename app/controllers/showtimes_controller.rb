class ShowtimesController < ApplicationController
  # GET /showtimes
  # GET /showtimes.json
  def index
    @showtimes = Showtime.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /showtimes/1
  # GET /showtimes/1.json
  def show
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @showtime }
    end
  end

  # GET /showtimes/new
  # GET /showtimes/new.json
  def new
    @showtime = Showtime.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  # GET /showtimes/1/edit
  def edit
    @showtime = Showtime.find(params[:id])
  end

  # POST /showtimes
  # POST /showtimes.json
  def create
    @showtime = Showtime.new(params[:showtime])

    respond_to do |format|
      if @showtime.save
        format.html { redirect_to @showtime, notice: 'Showtime was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  # PUT /showtimes/1
  # PUT /showtimes/1.json
  def update
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      if @showtime.update_attributes(params[:showtime])
        format.html { redirect_to @showtime, notice: 'Showtime was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  # DELETE /showtimes/1
  # DELETE /showtimes/1.json
  def destroy
    @showtime = Showtime.find(params[:id])
    @showtime.destroy

    respond_to do |format|
      format.html { redirect_to showtimes_url }
      format.js
    end
  end
end
