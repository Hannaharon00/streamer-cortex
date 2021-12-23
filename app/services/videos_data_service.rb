# frozen_string_literal: true

class VideosDataService
  BASE_VIDEO_URL = 'https://mock-youtube-api-f3d0c17f0e38.herokuapp.com/api/videos'

  def self.call(page)
    new(page).fetch_videos_data
  end

  def initialize(page)
