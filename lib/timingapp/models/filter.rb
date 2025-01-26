# frozen_string_literal: true

module Timingapp
  class Filter < TimingRecord
    self.table_name = "Filter"
    self.primary_key = "id"

    has_parent

    scope :samples, -> { where(isSample: true) }
  end
end
