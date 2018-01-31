class SeriesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]
	before_action :set_serie, only: [:edit, :update, :show, :destroy]

	def index
		@series = Serie.all
	end

	def new
		@serie = Serie.new
	end

	def edit; end

	def create
		@serie = Serie.new(serie_params)
		if @serie.save
			flash[:notice] = "Le film a bien été créé"
			redirect_to serie_path(@serie)
		else
			render 'new'
		end
	end

	def update
		if @serie.update(serie_params)
			flash[:notice] = "Le film a bien été créé"
			redirect_to serie_path(@serie)
		else
			render 'edit'
		end
	end

	def show; end

	def destroy
		@serie.destroy
		flash[:notice] = "Le film a bien été supprimé"
		redirect_to series_path
	end

	private

		def set_serie
			@serie = Serie.find(params[:id])
		end

		def serie_params
			params.require(:serie).permit(:title, :description, :profile_image, :remove_profile_image)
		end

end