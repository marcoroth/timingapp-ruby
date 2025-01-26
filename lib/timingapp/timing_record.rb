# frozen_string_literal: true

module Timingapp
  class TimingRecord < ActiveRecord::Base
    self.abstract_class = true

    def self.readonly?
      true
    end

    def before_destroy
      raise ActiveRecord::ReadOnlyRecord, "Cannot delete a read-only record"
    end

    def self.has_parent(foreign_key = :parentID)
      belongs_to :parent, foreign_key: foreign_key, class_name: name
    end

    def self.json_column(column)
      define_method(column) do |*args, &block|
        value = super(*args, &block)

        begin
          JSON.parse(value)
        rescue JSON::ParserError, TypeError
          value
        end
      end
    end

    def self.time_column(column)
      define_method(column) do |*args, &block|
        value = super(*args, &block)

        begin
          Time.at(value)
        rescue TypeError
          value
        end
      end
    end
  end
end
