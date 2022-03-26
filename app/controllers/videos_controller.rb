# frozen_string_literal: true

class VideosController < ApplicationController
  ITEMS_PER_PAGE = 20.0

  before_action :set_videos_data

  def index
    @total_pages = 1
    return @videos = search_title(params[:search]) if params[:search].present?

    @videos, @total_pages = fetch_videos_and_page
  end

