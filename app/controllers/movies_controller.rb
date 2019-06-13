class MoviesController < ApplicationController

	before_action :search

  def index
  	@japan_movies = Movie.where(country: "邦画")
  	@foreign_movies = Movie.where(country: "洋画")

  	@action_movies = Movie.where("category LIKE ?", "%アクション%")
  	@comedy_movies = Movie.where("category LIKE ?", "%コメディ%")
  	@mystery_movies = Movie.where("category LIKE ?", "%ミステリー%")
  	@love_movies = Movie.where("category LIKE ?", "%恋愛%")

    @rank_movies = Movie.find(Chat.group(:movie_id).order('count(movie_id) desc').limit(3).pluck(:movie_id))
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  private

  def search
  	@search_movies = Movie.search(params[:search])
  end

end
