-- Add indexes for performance
CREATE INDEX idx_flag_evaluations_created_at ON flag_evaluations (created_at);

CREATE INDEX idx_flag_evaluations_user_attributes ON flag_evaluations (user_attributes);

CREATE INDEX idx_flag_evaluations_user_key ON flag_evaluations (user_key);

CREATE INDEX idx_targeting_rules_conditions ON targeting_rules (conditions);

CREATE INDEX idx_targeting_rules_percentage_rollout ON targeting_rules (percentage_rollout);

CREATE INDEX idx_user_segments_conditions ON user_segments (conditions);

CREATE INDEX idx_api_keys_environment_id ON api_keys (environment_id);

CREATE INDEX idx_api_keys_project_id ON api_keys (project_id);

CREATE INDEX idx_environments_project_id ON environments (project_id);

CREATE INDEX idx_feature_flags_project_id ON feature_flags (project_id);

CREATE INDEX idx_flag_environment_settings_environment_id ON flag_environment_settings (environment_id);

CREATE INDEX idx_flag_environment_settings_feature_flag_id ON flag_environment_settings (feature_flag_id);

CREATE INDEX idx_flag_evaluations_environment_id ON flag_evaluations (environment_id);

CREATE INDEX idx_flag_evaluations_feature_flag_id ON flag_evaluations (feature_flag_id);

CREATE INDEX idx_flag_variations_feature_flag_id ON flag_variations (feature_flag_id);

CREATE INDEX idx_projects_organization_id ON projects (organization_id);

CREATE INDEX idx_segment_targeting_rules_targeting_rule_id ON segment_targeting_rules (targeting_rule_id);

CREATE INDEX idx_segment_targeting_rules_user_segment_id ON segment_targeting_rules (user_segment_id);

CREATE INDEX idx_targeting_rules_flag_environment_setting_id ON targeting_rules (flag_environment_setting_id);

CREATE INDEX idx_user_segments_project_id ON user_segments (project_id);
