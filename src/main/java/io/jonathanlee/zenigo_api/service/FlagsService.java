package io.jonathanlee.zenigo_api.service;

import io.jonathanlee.zenigo_api.domain.FeatureFlag;

import java.util.List;

public interface FlagsService {

    List<FeatureFlag> getAllFlags();
}
