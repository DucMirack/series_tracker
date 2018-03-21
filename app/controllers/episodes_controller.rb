class EpisodesController < ApplicationController
	def is_seen
		episode = Episode.find(params[:episode_id])
		episode.seen = !episode.seen
		episode.save
	end
end
