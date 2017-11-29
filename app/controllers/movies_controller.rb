class MoviesController < ApplicationController
	before_action :set_movie, only: [:edit, :update, :show, :destroy]

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def edit; end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "Le film a bien été créé"
			redirect_to movie_path(@movie)
		else
			render 'new'
		end
	end

	def update
		if @movie.update(movie_params)
			flash[:notice] = "Le film a bien été créé"
			redirect_to movie_path(@movie)
		else
			render 'edit'
		end
	end

	def show; end

	def destroy
		@movie.destroy
		flash[:notice] = "Le film a bien été supprimé"
		redirect_to movies_path
	end

	private

		def set_movie
			@movie = Movie.find(params[:id])
		end

		def movie_params
			params.require(:movie).permit(:title, :description)
		end

end