package io.jonathanlee.zenigo_api.domain;

import java.time.Instant;

public record Project(
        long id,
        long organizationId,
        String name,
        String key,
        String description,
        Instant createdAt,
        Instant updatedAt,
        boolean isActive
) {
}
