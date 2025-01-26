# frozen_string_literal: true

module Timingapp
  class IntegrationLogResult < TimingRecord
    self.table_name = "integration_log_result"
    self.primary_key = "id"

    belongs_to :integration, foreign_key: :integration_id

    time_column :timestamp
  end
end
