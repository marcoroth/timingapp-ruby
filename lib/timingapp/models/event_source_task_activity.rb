# frozen_string_literal: true

module Timingapp
  class EventSourceTaskActivity < TimingRecord
    self.table_name = "EventSourceTaskActivity"
    self.primary_key = "id"
  end
end
