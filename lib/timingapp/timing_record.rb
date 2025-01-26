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
  end
end
