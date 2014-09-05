class CharactersController < ApplicationController
  # GET /characters
  # GET /characters.json
  
  before_filter :authenticate_user!, :except => [:show, :index, :tree]
  
  helper_method :sort_column, :sort_direction
  def index
    
    @characters = Character.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 7, :page => params[:page])
    
    respond_to do |format| 
      format.html # index.html.erb 
      format.xml { render :xml => @products } 
      format.js # index.js.erb 
    end
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @character }
    end
  end

  # GET /characters/new
  # GET /characters/new.json
  def new
    @character = Character.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @character }
    end
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
    @sounds = Sound.find(:all)
    @glyphs = Glyph.find(:all)
  end

  # POST /characters
  # POST /characters.json
  def create
    
    @character = Character.new(:name => params[:character][:name])
    if !params[:character][:parent].blank?
      parent = Character.find(params[:character][:parent])
      @character.parent = parent
      parent.ancestry.nil? ? @character.ancestry = parent.id : @character.ancestry = parent.ancestry + '/' + parent.id.to_s
    end
    if !params[:character][:script].blank?
      @character.script = Script.find(params[:character][:script])
    end
    if !params[:character][:glyphs].blank?
      @character.glyphs = Glyph.find(params[:character][:glyphs])
    end
    if !params[:character][:sounds].blank?
      @character.sounds = Sound.find(params[:character][:sounds])
    end
    
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render json: @character, status: :created, location: @character }
      else
        format.html { render action: "new" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    
    @character = Character.find(params[:id])
    if !params[:character][:parent].blank?
      parent = Character.find(params[:character][:parent])
      @character.parent = parent
      parent.ancestry.nil? ? @character.ancestry = parent.id : @character.ancestry = parent.ancestry + '/' + parent.id.to_s
    end
    if !params[:character][:script].blank?
      @character.script = Script.find(params[:character][:script])
    end
    if !params[:character][:glyphs].blank?
      @character.glyphs = Glyph.find(params[:character][:glyphs])
    end
    if !params[:character][:sounds].blank?
      @character.sounds = Sound.find(params[:character][:sounds])
    end
    
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    respond_to do |format|
      format.html { redirect_to characters_url }
      format.json { head :ok }
    end
  end
  
  def tree
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @character }
    end
  end
  
  private
  
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
