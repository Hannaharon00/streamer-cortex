# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_playlists

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def set_playlists
    @playlists = Playlist.all
  end

