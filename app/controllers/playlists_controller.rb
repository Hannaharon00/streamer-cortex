# frozen_string_literal: true

  def show
    @videos = @playlist.videos
  end

  def new
    @playlist = Playlist.new
  end

