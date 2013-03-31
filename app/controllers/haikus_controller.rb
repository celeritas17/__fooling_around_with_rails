class HaikusController < ApplicationController
  # GET /haikus
  # GET /haikus.json
  def index
    @haikus = Haiku.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @haikus }
    end
  end

  # GET /haikus/1
  # GET /haikus/1.json
  def show
    @haiku = Haiku.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @haiku }
    end
  end

  # GET /haikus/new
  # GET /haikus/new.json
  def new
    @haiku = Haiku.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @haiku }
    end
  end

  # GET /haikus/1/edit
  def edit
    @haiku = Haiku.find(params[:id])
  end

  # POST /haikus
  # POST /haikus.json
  def create
    @haiku = Haiku.new(params[:haiku])

    respond_to do |format|
      if @haiku.save
        format.html { redirect_to @haiku, notice: 'Haiku was successfully created.' }
        format.json { render json: @haiku, status: :created, location: @haiku }
      else
        format.html { render action: "new" }
        format.json { render json: @haiku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /haikus/1
  # PUT /haikus/1.json
  def update
    @haiku = Haiku.find(params[:id])

    respond_to do |format|
      if @haiku.update_attributes(params[:haiku])
        format.html { redirect_to @haiku, notice: 'Haiku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @haiku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haikus/1
  # DELETE /haikus/1.json
  def destroy
    @haiku = Haiku.find(params[:id])
    @haiku.destroy

    respond_to do |format|
      format.html { redirect_to haikus_url }
      format.json { head :no_content }
    end
  end
end
