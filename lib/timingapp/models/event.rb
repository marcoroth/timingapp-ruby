# frozen_string_literal: true

module Timingapp
  class Event < TimingRecord
    self.table_name = "Event"
    self.primary_key = "id"
  end
end
