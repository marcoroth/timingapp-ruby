# frozen_string_literal: true

module Timingapp
  class EventSource < TimingRecord
    self.table_name = "EventSource"
    self.primary_key = "id"
  end
end
