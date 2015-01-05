class TranslationsController < ApplicationController
  def index
    @translations = Translation.all(:order => "created_at DESC")
  end

  def show
  end

  def new
    @translation = Translation.new
  end

  def create
    @translation = Translation.new(post_params)

    respond_to do |format|
      if @translation.save
        format.html { redirect_to translation_path(@translation), notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @translation }
      else
        format.html { render action: 'new' }
        format.json { render json: @translation.errors, status: :unprocessable_entity }
      end
    end
  end
end
