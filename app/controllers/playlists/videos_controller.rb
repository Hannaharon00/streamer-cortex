# frozen_string_literal: true

module Playlists
  class VideosController < ApplicationController
    before_action :set_playlist
    before_action :set_video, only: :destroy

        redirect_to @playlist, alert: @video.errors.full_messages.to_sentence
      end
    end

