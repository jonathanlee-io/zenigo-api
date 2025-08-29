package io.jonathanlee.zenigo_api.service.impl;

import io.jonathanlee.zenigo_api.domain.Organization;
import io.jonathanlee.zenigo_api.mapper.OrganizationsMapper;
import io.jonathanlee.zenigo_api.service.OrganizationsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrganizationsServiceImpl implements OrganizationsService {

    private final OrganizationsMapper organizationsMapper;

    @Override
    public List<Organization> getAllOrganizations() {
        return this.organizationsMapper.getAllOrganizations();
    }
}
