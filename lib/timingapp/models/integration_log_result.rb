# frozen_string_literal: true

module Timingapp
  class IntegrationLogResult < TimingRecord
    self.table_name = "IntegrationLogResult"
    self.primary_key = "id"
  end
end
