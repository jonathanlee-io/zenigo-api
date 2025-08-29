package io.jonathanlee.zenigo_api.domain;

import java.time.Instant;

public record Organization(
        String id,
        String name,
        String slug,
        String description,
        Instant createdAt,
        Instant updatedAt,
        boolean isActive
) {
}
