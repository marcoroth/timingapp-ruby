# frozen_string_literal: true

require "test_helper"

module Timingapp
  class DatabaseTest < Minitest::Test
    def test_can_open_database
      skip unless RUBY_PLATFORM.match?(/darwin/)

      Timingapp.load!

      assert_equal(
        "#{Dir.home}/Library/Application Support/info.eurocomp.Timing2/SQLite.db",
        Timingapp::Database.instance.path
      )
    end
  end
end
