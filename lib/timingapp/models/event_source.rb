# frozen_string_literal: true

module Timingapp
  class EventSource < TimingRecord
    self.table_name = "EventSource"
    self.primary_key = "id"

    belongs_to :integration, foreign_key: :integration_id
    belongs_to :integration_project, foreign_key: :integration_project_id
    belongs_to :template, foreign_key: :template_id
    belongs_to :origin, foreign_key: :origin_id

    scope :templates, -> { where(is_template: true) }
    scope :favorites, -> { where(is_favorite: true) }

    time_column :last_modified_origin
    time_column :last_modified_timing
    time_column :created_by_integration_at
    time_column :deleted_by_integration_at
    time_column :hidden_at

    json_column :property_bag
  end
end
