# frozen_string_literal: true

class VideosController < ApplicationController
  ITEMS_PER_PAGE = 20.0

  before_action :set_videos_data

  def index
    @total_pages = 1
    return @videos = search_title(params[:search]) if params[:search].present?

    @videos, @total_pages = fetch_videos_and_page
  end

  private

  def fetch_videos_and_page
    videos = @videos_data['videos']
    total_items = @videos_data['meta']['total']
    total_pages = (total_items / ITEMS_PER_PAGE).ceil
    [videos, total_pages]
  end

