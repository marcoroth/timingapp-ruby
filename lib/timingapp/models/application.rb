# frozen_string_literal: true

module Timingapp
  class Application < TimingRecord
    self.table_name = "Application"
    self.primary_key = "id"
  end
end
