# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/timingapp/models")
loader.setup

module Timingapp
  DEFAULT_DATABASE_PATH = "#{Dir.home}/Library/Application Support/info.eurocomp.Timing2/SQLite.db".freeze

  def self.load!(path = DEFAULT_DATABASE_PATH)
    Database.instance.open(path)
  end
end

loader.eager_load
