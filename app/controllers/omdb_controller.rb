class OmdbController < ApplicationController
  layout "movies_"

  def index
    unless params[:search].blank?
      jsonclass = Omdb.new
      @response = jsonclass.responsesearch(params[:search])
      unless (@response!=nil)
        @mess="Ikke fundet!"
      end
    else
      @mess="Indtast søgetekst"
    end
  end
  
  def show
    @b=params[:search]
    jsonclass = Omdb.new
    @movie = jsonclass.responseshow(params[:show])
  end


  private
    def omdb_params
      params.permit(:search)
      params.permit(:show)
    end

  end
  # :title, :plot, :poster, :year, :imdbID,