# frozen_string_literal: true

class PlaylistsController < ApplicationController
  before_action :set_playlist, only: :show

  def show
    @videos = @playlist.videos
  end

  def new
    @playlist = Playlist.new
  end

    else
      redirect_to videos_path, alert: 'Failed to create playlist'
    end
  end

