# frozen_string_literal: true

module Timingapp
  class Event < TimingRecord
    self.table_name = "Event"
    self.primary_key = "id"

    belongs_to :integration, foreign_key: :integration_id
    belongs_to :event_source, foreign_key: :event_source_id
    belongs_to :origin, foreign_key: :origin_id, class_name: "TODO"

    json_column :property_bag

    time_column :start_date
    time_column :end_date
    time_column :last_modified_origin
    time_column :last_modified_timing
    time_column :deleted_at
  end
end
