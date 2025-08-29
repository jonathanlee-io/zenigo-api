-- Add unique constraints to tables
ALTER TABLE api_keys
    ADD CONSTRAINT api_keys_key_value_key UNIQUE (key_value);

ALTER TABLE environments
    ADD CONSTRAINT environments_project_id_key_key UNIQUE (project_id, key);

ALTER TABLE feature_flags
    ADD CONSTRAINT feature_flags_project_id_key_key UNIQUE (project_id, key);

ALTER TABLE flag_environment_settings
    ADD CONSTRAINT flag_environment_settings_feature_flag_id_environment_id_key UNIQUE (feature_flag_id, environment_id);

ALTER TABLE organizations
    ADD CONSTRAINT organizations_slug_key UNIQUE (slug);

ALTER TABLE projects
    ADD CONSTRAINT projects_organization_id_key_key UNIQUE (organization_id, key);

ALTER TABLE segment_targeting_rules
    ADD CONSTRAINT segment_targeting_rules_targeting_rule_id_user_segment_id_key UNIQUE (targeting_rule_id, user_segment_id);

ALTER TABLE user_segments
    ADD CONSTRAINT user_segments_project_id_key_key UNIQUE (project_id, key);
