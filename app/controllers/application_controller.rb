# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_playlists

  def set_playlists
    @playlists = Playlist.all
  end

