package io.jonathanlee.zenigo_api.controller;

import io.jonathanlee.zenigo_api.service.OrganizationsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/organizations")
public class OrganizationsController {

    private final OrganizationsService organizationsService;

    @GetMapping
    public Iterable<io.jonathanlee.zenigo_api.domain.Organization> getOrganizations() {
        return this.organizationsService.getAllOrganizations();
    }
}
