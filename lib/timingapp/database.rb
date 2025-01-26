# frozen_string_literal: true

require "singleton"
require "active_record"
require "sqlite3"

module Timingapp
  class Database
    include Singleton

    attr_reader :path, :connection

    def open(path)
      @path = path

      @connection = ActiveRecord::Base.establish_connection(
        adapter: "sqlite3",
        database: path,
        flags: SQLite3::Constants::Open::READONLY
      )
    end
  end
end
