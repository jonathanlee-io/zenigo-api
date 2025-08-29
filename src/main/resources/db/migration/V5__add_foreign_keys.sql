-- Add foreign key constraints
ALTER TABLE api_keys
    ADD CONSTRAINT api_keys_environment_id_fkey FOREIGN KEY (environment_id) REFERENCES environments (id) ON DELETE CASCADE;

ALTER TABLE api_keys
    ADD CONSTRAINT api_keys_project_id_fkey FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE;

ALTER TABLE environments
    ADD CONSTRAINT environments_project_id_fkey FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE;

ALTER TABLE feature_flags
    ADD CONSTRAINT feature_flags_project_id_fkey FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE;

ALTER TABLE flag_environment_settings
    ADD CONSTRAINT flag_environment_settings_default_variation_id_fkey FOREIGN KEY (default_variation_id) REFERENCES flag_variations (id) ON DELETE NO ACTION;

ALTER TABLE flag_environment_settings
    ADD CONSTRAINT flag_environment_settings_environment_id_fkey FOREIGN KEY (environment_id) REFERENCES environments (id) ON DELETE CASCADE;

ALTER TABLE flag_environment_settings
    ADD CONSTRAINT flag_environment_settings_fallback_variation_id_fkey FOREIGN KEY (fallback_variation_id) REFERENCES flag_variations (id) ON DELETE NO ACTION;

ALTER TABLE flag_environment_settings
    ADD CONSTRAINT flag_environment_settings_feature_flag_id_fkey FOREIGN KEY (feature_flag_id) REFERENCES feature_flags (id) ON DELETE CASCADE;

ALTER TABLE flag_evaluations
    ADD CONSTRAINT flag_evaluations_environment_id_fkey FOREIGN KEY (environment_id) REFERENCES environments (id) ON DELETE CASCADE;

ALTER TABLE flag_evaluations
    ADD CONSTRAINT flag_evaluations_feature_flag_id_fkey FOREIGN KEY (feature_flag_id) REFERENCES feature_flags (id) ON DELETE CASCADE;

ALTER TABLE flag_evaluations
    ADD CONSTRAINT flag_evaluations_targeting_rule_id_fkey FOREIGN KEY (targeting_rule_id) REFERENCES targeting_rules (id) ON DELETE NO ACTION;

ALTER TABLE flag_variations
    ADD CONSTRAINT flag_variations_feature_flag_id_fkey FOREIGN KEY (feature_flag_id) REFERENCES feature_flags (id) ON DELETE CASCADE;

ALTER TABLE projects
    ADD CONSTRAINT projects_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES organizations (id) ON DELETE CASCADE;

ALTER TABLE segment_targeting_rules
    ADD CONSTRAINT segment_targeting_rules_targeting_rule_id_fkey FOREIGN KEY (targeting_rule_id) REFERENCES targeting_rules (id) ON DELETE CASCADE;

ALTER TABLE segment_targeting_rules
    ADD CONSTRAINT segment_targeting_rules_user_segment_id_fkey FOREIGN KEY (user_segment_id) REFERENCES user_segments (id) ON DELETE CASCADE;

ALTER TABLE targeting_rules
    ADD CONSTRAINT targeting_rules_flag_environment_setting_id_fkey FOREIGN KEY (flag_environment_setting_id) REFERENCES flag_environment_settings (id) ON DELETE CASCADE;

ALTER TABLE targeting_rules
    ADD CONSTRAINT targeting_rules_variation_id_fkey FOREIGN KEY (variation_id) REFERENCES flag_variations (id) ON DELETE NO ACTION;

ALTER TABLE user_segments
    ADD CONSTRAINT user_segments_project_id_fkey FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE;
