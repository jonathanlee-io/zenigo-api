-- Sample data for feature flag management system

-- Organizations
INSERT INTO organizations (id, name, slug, description, created_at, updated_at, is_active) VALUES
                                                                                               (1, 'TechCorp Solutions', 'techcorp', 'A leading technology company focused on innovative software solutions', NOW(), NOW(), true),
                                                                                               (2, 'StartupLab Inc', 'startuplab', 'An agile startup specializing in mobile applications', NOW(), NOW(), true),
                                                                                               (3, 'Enterprise Systems Ltd', 'enterprise-systems', 'Large-scale enterprise software provider', NOW(), NOW(), true);

-- Projects
INSERT INTO projects (id, organization_id, name, key, description, created_at, updated_at, is_active) VALUES
                                                                                                          (1, 1, 'E-Commerce Platform', 'ecommerce', 'Main e-commerce platform for online retail', NOW(), NOW(), true),
                                                                                                          (2, 1, 'Mobile App Backend', 'mobile-backend', 'Backend services for mobile applications', NOW(), NOW(), true),
                                                                                                          (3, 2, 'Food Delivery App', 'food-delivery', 'On-demand food delivery mobile application', NOW(), NOW(), true),
                                                                                                          (4, 3, 'Customer Management System', 'cms', 'Enterprise customer relationship management system', NOW(), NOW(), true);

-- Environments
INSERT INTO environments (id, project_id, name, key, description, sort_order, created_at, updated_at, is_active) VALUES
                                                                                                                     (1, 1, 'Development', 'dev', 'Development environment for e-commerce platform', 1, NOW(), NOW(), true),
                                                                                                                     (2, 1, 'Staging', 'staging', 'Staging environment for e-commerce platform', 2, NOW(), NOW(), true),
                                                                                                                     (3, 1, 'Production', 'prod', 'Production environment for e-commerce platform', 3, NOW(), NOW(), true),
                                                                                                                     (4, 2, 'Development', 'dev', 'Development environment for mobile backend', 1, NOW(), NOW(), true),
                                                                                                                     (5, 2, 'Production', 'prod', 'Production environment for mobile backend', 2, NOW(), NOW(), true),
                                                                                                                     (6, 3, 'Development', 'dev', 'Development environment for food delivery app', 1, NOW(), NOW(), true),
                                                                                                                     (7, 3, 'Production', 'prod', 'Production environment for food delivery app', 2, NOW(), NOW(), true),
                                                                                                                     (8, 4, 'Staging', 'staging', 'Staging environment for CMS', 1, NOW(), NOW(), true),
                                                                                                                     (9, 4, 'Production', 'prod', 'Production environment for CMS', 2, NOW(), NOW(), true);

-- Feature Flags
INSERT INTO feature_flags (id, project_id, name, key, description, flag_type, default_value, is_permanent, created_at, updated_at, created_by, tags) VALUES
                                                                                                                                                         (1, 1, 'New Checkout Flow', 'new-checkout-flow', 'Enable the redesigned checkout process', 'BOOLEAN', 'false', false, NOW(), NOW(), 'john.doe@techcorp.com', ARRAY['checkout', 'ui', 'conversion']),
                                                                                                                                                         (2, 1, 'Premium Features', 'premium-features', 'Enable premium subscription features', 'BOOLEAN', 'false', false, NOW(), NOW(), 'jane.smith@techcorp.com', ARRAY['premium', 'subscription']),
                                                                                                                                                         (3, 1, 'Product Recommendations', 'product-recommendations', 'Show AI-powered product recommendations', 'BOOLEAN', 'true', false, NOW(), NOW(), 'alex.johnson@techcorp.com', ARRAY['ai', 'recommendations']),
                                                                                                                                                         (4, 1, 'Payment Provider', 'payment-provider', 'Select payment provider for transactions', 'STRING', 'stripe', false, NOW(), NOW(), 'john.doe@techcorp.com', ARRAY['payments', 'integration']),
                                                                                                                                                         (5, 2, 'Push Notifications', 'push-notifications', 'Enable push notifications for mobile users', 'BOOLEAN', 'true', false, NOW(), NOW(), 'mobile.team@techcorp.com', ARRAY['mobile', 'notifications']),
                                                                                                                                                         (6, 2, 'API Rate Limiting', 'api-rate-limiting', 'Enable rate limiting for API endpoints', 'BOOLEAN', 'false', false, NOW(), NOW(), 'backend.team@techcorp.com', ARRAY['api', 'security']),
                                                                                                                                                         (7, 3, 'Real-time Tracking', 'realtime-tracking', 'Enable real-time delivery tracking', 'BOOLEAN', 'false', false, NOW(), NOW(), 'dev@startuplab.com', ARRAY['tracking', 'realtime']),
                                                                                                                                                         (8, 3, 'Promo Code System', 'promo-codes', 'Enable promotional code functionality', 'BOOLEAN', 'true', false, NOW(), NOW(), 'marketing@startuplab.com', ARRAY['marketing', 'promotions']),
                                                                                                                                                         (9, 4, 'Advanced Analytics', 'advanced-analytics', 'Enable advanced customer analytics dashboard', 'BOOLEAN', 'false', false, NOW(), NOW(), 'analytics@enterprise.com', ARRAY['analytics', 'dashboard']),
                                                                                                                                                         (10, 4, 'Multi-tenant Support', 'multi-tenant', 'Enable multi-tenant architecture', 'BOOLEAN', 'true', true, NOW(), NOW(), 'architect@enterprise.com', ARRAY['architecture', 'tenancy']);

-- Flag Variations
INSERT INTO flag_variations (id, feature_flag_id, name, value, description, sort_order, created_at, updated_at) VALUES
-- Boolean flag variations
(1, 1, 'Enabled', 'true', 'New checkout flow enabled', 1, NOW(), NOW()),
(2, 1, 'Disabled', 'false', 'New checkout flow disabled', 2, NOW(), NOW()),
(3, 2, 'Enabled', 'true', 'Premium features enabled', 1, NOW(), NOW()),
(4, 2, 'Disabled', 'false', 'Premium features disabled', 2, NOW(), NOW()),
(5, 3, 'Enabled', 'true', 'Product recommendations enabled', 1, NOW(), NOW()),
(6, 3, 'Disabled', 'false', 'Product recommendations disabled', 2, NOW(), NOW()),
-- String flag variations for payment provider
(7, 4, 'Stripe', 'stripe', 'Use Stripe as payment provider', 1, NOW(), NOW()),
(8, 4, 'PayPal', 'paypal', 'Use PayPal as payment provider', 2, NOW(), NOW()),
(9, 4, 'Square', 'square', 'Use Square as payment provider', 3, NOW(), NOW()),
-- More boolean variations
(10, 5, 'Enabled', 'true', 'Push notifications enabled', 1, NOW(), NOW()),
(11, 5, 'Disabled', 'false', 'Push notifications disabled', 2, NOW(), NOW()),
(12, 6, 'Enabled', 'true', 'API rate limiting enabled', 1, NOW(), NOW()),
(13, 6, 'Disabled', 'false', 'API rate limiting disabled', 2, NOW(), NOW()),
(14, 7, 'Enabled', 'true', 'Real-time tracking enabled', 1, NOW(), NOW()),
(15, 7, 'Disabled', 'false', 'Real-time tracking disabled', 2, NOW(), NOW()),
(16, 8, 'Enabled', 'true', 'Promo code system enabled', 1, NOW(), NOW()),
(17, 8, 'Disabled', 'false', 'Promo code system disabled', 2, NOW(), NOW()),
(18, 9, 'Enabled', 'true', 'Advanced analytics enabled', 1, NOW(), NOW()),
(19, 9, 'Disabled', 'false', 'Advanced analytics disabled', 2, NOW(), NOW()),
(20, 10, 'Enabled', 'true', 'Multi-tenant support enabled', 1, NOW(), NOW()),
(21, 10, 'Disabled', 'false', 'Multi-tenant support disabled', 2, NOW(), NOW());

-- Flag Environment Settings
INSERT INTO flag_environment_settings (id, feature_flag_id, environment_id, is_enabled, default_variation_id, fallback_variation_id, created_at, updated_at) VALUES
-- E-commerce platform settings
(1, 1, 1, true, 1, 2, NOW(), NOW()),   -- New checkout flow: enabled in dev
(2, 1, 2, true, 1, 2, NOW(), NOW()),   -- New checkout flow: enabled in staging
(3, 1, 3, false, 2, 2, NOW(), NOW()),  -- New checkout flow: disabled in prod
(4, 2, 1, true, 3, 4, NOW(), NOW()),   -- Premium features: enabled in dev
(5, 2, 2, true, 3, 4, NOW(), NOW()),   -- Premium features: enabled in staging
(6, 2, 3, true, 3, 4, NOW(), NOW()),   -- Premium features: enabled in prod
(7, 3, 1, true, 5, 6, NOW(), NOW()),   -- Product recommendations: enabled in dev
(8, 3, 2, true, 5, 6, NOW(), NOW()),   -- Product recommendations: enabled in staging
(9, 3, 3, true, 5, 6, NOW(), NOW()),   -- Product recommendations: enabled in prod
(10, 4, 1, true, 7, 7, NOW(), NOW()),  -- Payment provider: stripe in dev
(11, 4, 2, true, 7, 7, NOW(), NOW()),  -- Payment provider: stripe in staging
(12, 4, 3, true, 7, 7, NOW(), NOW()),  -- Payment provider: stripe in prod
-- Mobile backend settings
(13, 5, 4, true, 10, 11, NOW(), NOW()), -- Push notifications: enabled in dev
(14, 5, 5, true, 10, 11, NOW(), NOW()), -- Push notifications: enabled in prod
(15, 6, 4, false, 13, 13, NOW(), NOW()), -- API rate limiting: disabled in dev
(16, 6, 5, true, 12, 13, NOW(), NOW()),  -- API rate limiting: enabled in prod
-- Food delivery app settings
(17, 7, 6, true, 14, 15, NOW(), NOW()),  -- Real-time tracking: enabled in dev
(18, 7, 7, false, 15, 15, NOW(), NOW()), -- Real-time tracking: disabled in prod
(19, 8, 6, true, 16, 17, NOW(), NOW()),  -- Promo codes: enabled in dev
(20, 8, 7, true, 16, 17, NOW(), NOW()),  -- Promo codes: enabled in prod
-- CMS settings
(21, 9, 8, true, 18, 19, NOW(), NOW()),  -- Advanced analytics: enabled in staging
(22, 9, 9, false, 19, 19, NOW(), NOW()), -- Advanced analytics: disabled in prod
(23, 10, 8, true, 20, 21, NOW(), NOW()), -- Multi-tenant: enabled in staging
(24, 10, 9, true, 20, 21, NOW(), NOW()); -- Multi-tenant: enabled in prod

-- User Segments
INSERT INTO user_segments (id, project_id, name, key, description, conditions, created_at, updated_at) VALUES
                                                                                                           (1, 1, 'Premium Users', 'premium-users', 'Users with premium subscriptions', '{"operator": "AND", "conditions": [{"attribute": "subscription_type", "operator": "EQUALS", "value": "premium"}]}', NOW(), NOW()),
                                                                                                           (2, 1, 'Beta Testers', 'beta-testers', 'Users enrolled in beta testing program', '{"operator": "AND", "conditions": [{"attribute": "beta_tester", "operator": "EQUALS", "value": "true"}]}', NOW(), NOW()),
                                                                                                           (3, 1, 'High Value Customers', 'high-value', 'Customers with high lifetime value', '{"operator": "AND", "conditions": [{"attribute": "lifetime_value", "operator": "GREATER_THAN", "value": "1000"}]}', NOW(), NOW()),
                                                                                                           (4, 2, 'Mobile Power Users', 'power-users', 'Users with high app engagement', '{"operator": "AND", "conditions": [{"attribute": "daily_sessions", "operator": "GREATER_THAN", "value": "5"}]}', NOW(), NOW()),
                                                                                                           (5, 3, 'Frequent Orderers', 'frequent-orderers', 'Users who order frequently', '{"operator": "AND", "conditions": [{"attribute": "orders_per_month", "operator": "GREATER_THAN", "value": "10"}]}', NOW(), NOW()),
                                                                                                           (6, 4, 'Enterprise Admins', 'enterprise-admins', 'Users with administrative privileges', '{"operator": "AND", "conditions": [{"attribute": "role", "operator": "EQUALS", "value": "admin"}]}', NOW(), NOW());

-- Targeting Rules
INSERT INTO targeting_rules (id, flag_environment_setting_id, name, conditions, variation_id, percentage_rollout, sort_order, is_enabled, created_at, updated_at) VALUES
-- Rules for new checkout flow in development
(1, 1, 'Beta Testers Rule', '{"operator": "AND", "conditions": [{"attribute": "beta_tester", "operator": "EQUALS", "value": "true"}]}', 1, NULL, 1, true, NOW(), NOW()),
(2, 1, 'Gradual Rollout', '{"operator": "AND", "conditions": [{"attribute": "user_id", "operator": "MODULO", "value": "10", "result": "LESS_THAN", "threshold": "3"}]}', 1, '{"enabled": {"percentage": 30, "variation_id": 1}, "disabled": {"percentage": 70, "variation_id": 2}}', 2, true, NOW(), NOW()),
-- Rules for premium features in production
(3, 6, 'Premium Users Only', '{"operator": "AND", "conditions": [{"attribute": "subscription_type", "operator": "EQUALS", "value": "premium"}]}', 3, NULL, 1, true, NOW(), NOW()),
-- Rules for payment provider
(4, 12, 'High Value Customers PayPal', '{"operator": "AND", "conditions": [{"attribute": "lifetime_value", "operator": "GREATER_THAN", "value": "5000"}]}', 8, NULL, 1, true, NOW(), NOW()),
-- Rules for API rate limiting in production
(5, 16, 'Power Users Exemption', '{"operator": "AND", "conditions": [{"attribute": "api_tier", "operator": "EQUALS", "value": "premium"}]}', 13, NULL, 1, false, NOW(), NOW()),
-- Rules for real-time tracking rollout
(6, 18, 'Gradual Production Rollout', '{"operator": "OR", "conditions": [{"attribute": "city", "operator": "IN", "value": ["New York", "Los Angeles", "Chicago"]}]}', 14, '{"enabled": {"percentage": 25, "variation_id": 14}, "disabled": {"percentage": 75, "variation_id": 15}}', 1, true, NOW(), NOW());

-- Segment Targeting Rules
INSERT INTO segment_targeting_rules (id, targeting_rule_id, user_segment_id, created_at) VALUES
                                                                                             (1, 1, 2, NOW()),  -- Beta testers rule uses beta testers segment
                                                                                             (2, 3, 1, NOW()),  -- Premium users rule uses premium users segment
                                                                                             (3, 4, 3, NOW()),  -- High value customers rule uses high value segment
                                                                                             (4, 6, 5, NOW());  -- Production rollout includes frequent orderers

-- API Keys
INSERT INTO api_keys (id, project_id, environment_id, name, key_value, key_type, is_active, last_used_at, created_at, updated_at, expires_at) VALUES
                                                                                                                                                  (1, 1, 1, 'Development SDK Key', 'sdk-dev-ecommerce-a1b2c3d4e5f6', 'SDK', true, NOW() - INTERVAL '2 hours', NOW() - INTERVAL '30 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (2, 1, 2, 'Staging SDK Key', 'sdk-staging-ecommerce-f6e5d4c3b2a1', 'SDK', true, NOW() - INTERVAL '1 day', NOW() - INTERVAL '30 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (3, 1, 3, 'Production SDK Key', 'sdk-prod-ecommerce-9z8y7x6w5v4u', 'SDK', true, NOW() - INTERVAL '5 minutes', NOW() - INTERVAL '30 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (4, 1, 3, 'Production Admin Key', 'admin-prod-ecommerce-u4v5w6x7y8z9', 'ADMIN', true, NOW() - INTERVAL '1 hour', NOW() - INTERVAL '15 days', NOW(), NOW() + INTERVAL '6 months'),
                                                                                                                                                  (5, 2, 4, 'Mobile Dev Key', 'sdk-dev-mobile-m1n2o3p4q5r6', 'SDK', true, NOW() - INTERVAL '30 minutes', NOW() - INTERVAL '20 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (6, 2, 5, 'Mobile Prod Key', 'sdk-prod-mobile-r6q5p4o3n2m1', 'SDK', true, NOW() - INTERVAL '2 minutes', NOW() - INTERVAL '20 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (7, 3, 6, 'Food Delivery Dev Key', 'sdk-dev-food-s7t8u9v0w1x2', 'SDK', true, NOW() - INTERVAL '4 hours', NOW() - INTERVAL '10 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (8, 3, 7, 'Food Delivery Prod Key', 'sdk-prod-food-x2w1v0u9t8s7', 'SDK', true, NOW() - INTERVAL '1 minute', NOW() - INTERVAL '10 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (9, 4, 8, 'CMS Staging Key', 'sdk-staging-cms-y3z4a5b6c7d8', 'SDK', true, NOW() - INTERVAL '6 hours', NOW() - INTERVAL '5 days', NOW(), NOW() + INTERVAL '1 year'),
                                                                                                                                                  (10, 4, 9, 'CMS Production Key', 'sdk-prod-cms-d8c7b6a5z4y3', 'SDK', true, NOW() - INTERVAL '10 minutes', NOW() - INTERVAL '5 days', NOW(), NOW() + INTERVAL '1 year');

-- Flag Evaluations (sample evaluation history)
INSERT INTO flag_evaluations (id, feature_flag_id, environment_id, user_key, user_attributes, variation_value, targeting_rule_id, evaluation_reason, created_at) VALUES
-- Recent evaluations for various flags
(1, 1, 3, 'user_12345', '{"subscription_type": "premium", "beta_tester": "true", "lifetime_value": 2500}', 'true', 1, 'MATCHED_RULE', NOW() - INTERVAL '5 minutes'),
(2, 1, 3, 'user_67890', '{"subscription_type": "free", "beta_tester": "false", "lifetime_value": 150}', 'false', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '3 minutes'),
(3, 2, 3, 'user_12345', '{"subscription_type": "premium", "beta_tester": "true", "lifetime_value": 2500}', 'true', 3, 'MATCHED_RULE', NOW() - INTERVAL '4 minutes'),
(4, 3, 3, 'user_98765', '{"subscription_type": "free", "beta_tester": "false", "lifetime_value": 50}', 'true', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '2 minutes'),
(5, 4, 3, 'user_11111', '{"subscription_type": "premium", "beta_tester": "false", "lifetime_value": 7500}', 'paypal', 4, 'MATCHED_RULE', NOW() - INTERVAL '8 minutes'),
(6, 5, 5, 'mobile_user_001', '{"daily_sessions": 8, "device_type": "ios", "app_version": "2.1.0"}', 'true', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '1 minute'),
(7, 6, 5, 'mobile_user_002', '{"daily_sessions": 3, "device_type": "android", "api_tier": "premium"}', 'false', 5, 'MATCHED_RULE', NOW() - INTERVAL '7 minutes'),
(8, 7, 7, 'delivery_user_001', '{"city": "New York", "orders_per_month": 15}', 'true', 6, 'MATCHED_RULE', NOW() - INTERVAL '12 minutes'),
(9, 8, 7, 'delivery_user_002', '{"city": "Boston", "orders_per_month": 3}', 'true', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '6 minutes'),
(10, 9, 9, 'admin_001', '{"role": "admin", "department": "sales"}', 'false', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '15 minutes'),
-- Historical evaluations from past days
(11, 1, 3, 'user_historical_1', '{"subscription_type": "free", "beta_tester": "false"}', 'false', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '2 days'),
(12, 1, 3, 'user_historical_2', '{"subscription_type": "premium", "beta_tester": "true"}', 'true', 1, 'MATCHED_RULE', NOW() - INTERVAL '1 day'),
(13, 2, 3, 'user_historical_3', '{"subscription_type": "premium"}', 'true', 3, 'MATCHED_RULE', NOW() - INTERVAL '3 days'),
(14, 5, 5, 'mobile_historical_1', '{"daily_sessions": 12}', 'true', NULL, 'DEFAULT_VARIATION', NOW() - INTERVAL '4 days'),
(15, 7, 7, 'delivery_historical_1', '{"city": "Chicago", "orders_per_month": 25}', 'true', 6, 'MATCHED_RULE', NOW() - INTERVAL '5 days');

-- Update sequences to current max values to avoid conflicts
SELECT setval('organizations_id_seq', (SELECT MAX(id) FROM organizations));
SELECT setval('projects_id_seq', (SELECT MAX(id) FROM projects));
SELECT setval('environments_id_seq', (SELECT MAX(id) FROM environments));
SELECT setval('feature_flags_id_seq', (SELECT MAX(id) FROM feature_flags));
SELECT setval('flag_variations_id_seq', (SELECT MAX(id) FROM flag_variations));
SELECT setval('flag_environment_settings_id_seq', (SELECT MAX(id) FROM flag_environment_settings));
SELECT setval('user_segments_id_seq', (SELECT MAX(id) FROM user_segments));
SELECT setval('targeting_rules_id_seq', (SELECT MAX(id) FROM targeting_rules));
SELECT setval('segment_targeting_rules_id_seq', (SELECT MAX(id) FROM segment_targeting_rules));
SELECT setval('api_keys_id_seq', (SELECT MAX(id) FROM api_keys));
SELECT setval('flag_evaluations_id_seq', (SELECT MAX(id) FROM flag_evaluations));