# frozen_string_literal: true

module Timingapp
  class EventSourceTaskActivity < TimingRecord
    self.table_name = "EventSourceTaskActivity"
    self.primary_key = "id"

    belongs_to :integration, foreign_key: :integration_id
    belongs_to :event_source, foreign_key: :event_source_id
    belongs_to :task_activity, foreign_key: :task_activity_id
    belongs_to :event, foreign_key: :event_id

    scope :deleted, -> { where.not(deleted_at: nil) }

    time_column :deleted_at

    json_column :property_bag
  end
end
