class GlyphsController < ApplicationController
  # GET /glyphs
  # GET /glyphs.json
  
  before_filter :authenticate_user!, :except => [:show, :index]
  helper_method :sort_column, :sort_direction
  def index
    @glyphs = Glyph.search(params[:search]).order(sort_column + " " +  sort_direction).paginate(:per_page => 7, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @glyphs }
      format.js # index.js.erb
    end
  end

  # GET /glyphs/1
  # GET /glyphs/1.json
  def show
    @glyph = Glyph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @glyph }
    end
  end

  # GET /glyphs/new
  # GET /glyphs/new.json
  def new
    @glyph = Glyph.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @glyph }
    end
  end

  # GET /glyphs/1/edit
  def edit
    @glyph = Glyph.find(params[:id])
  end

  # POST /glyphs
  # POST /glyphs.json
  def create
    @glyph = Glyph.new(params[:glyph])

    respond_to do |format|
      if @glyph.save
        format.html { redirect_to @glyph, notice: 'Glyph was successfully created.' }
        format.json { render json: @glyph, status: :created, location: @glyph }
      else
        format.html { render action: "new" }
        format.json { render json: @glyph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /glyphs/1
  # PUT /glyphs/1.json
  def update
    @glyph = Glyph.find(params[:id])

    respond_to do |format|
      if @glyph.update_attributes(params[:glyph])
        format.html { redirect_to @glyph, notice: 'Glyph was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @glyph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glyphs/1
  # DELETE /glyphs/1.json
  def destroy
    @glyph = Glyph.find(params[:id])
    @glyph.destroy

    respond_to do |format|
      format.html { redirect_to glyphs_url }
      format.json { head :ok }
    end
  end
  
  
  private
  
  def sort_column
    params[:sort] || "image"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
