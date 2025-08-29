package io.jonathanlee.zenigo_api.domain;

import java.time.Instant;

public record FeatureFlag(
        String id,
        String projectId,
        String name,
        String key,
        String description,
        String flagType,
        String defaultValue,
        boolean isPermanent,
        Instant createdAt,
        Instant updatedAt,
        String createdBy
) {
}
