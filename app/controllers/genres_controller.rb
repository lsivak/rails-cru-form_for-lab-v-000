class GenresController < ApplicationController
    
def show
    @genre = Genre.find(params[:id])
end

def new
	  @genre = Genre.new
	end

def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
end

def update
   @genre = Genre.find(params[:id])
  @genre.update(genre_params(:genre))
  redirect_to genre_path(@genre)
end 

def edit
	  @genres = Genre.find(params[:id])
	end
    
    
def genre_params(*args)
		params.require(:genre).permit(*args)
	end
	end

