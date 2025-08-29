package io.jonathanlee.zenigo_api.controller;

import io.jonathanlee.zenigo_api.service.FlagsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/flags")
public class FlagsController {

    private final FlagsService flagsService;

    @GetMapping
    public Iterable<io.jonathanlee.zenigo_api.domain.FeatureFlag> getFlags() {
        return this.flagsService.getAllFlags();
    }
}
