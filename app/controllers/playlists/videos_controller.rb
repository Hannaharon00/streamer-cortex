# frozen_string_literal: true

module Playlists
  class VideosController < ApplicationController
    before_action :set_playlist
    before_action :set_video, only: :destroy

    def create
      @video = @playlist.videos.new(video_params)
      if @video.save
        redirect_to @playlist, notice: 'Video added to playlist successfully'
      else
        redirect_to @playlist, alert: @video.errors.full_messages.to_sentence
      end
    end

    private

