package io.jonathanlee.zenigo_api.service.impl;

import io.jonathanlee.zenigo_api.domain.FeatureFlag;
import io.jonathanlee.zenigo_api.mapper.FlagsMapper;
import io.jonathanlee.zenigo_api.service.FlagsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FlagsServiceImpl implements FlagsService {

    private final FlagsMapper flagsMapper;

    @Override
    public List<FeatureFlag> getAllFlags() {
        return this.flagsMapper.getAllFlags();
    }
}
