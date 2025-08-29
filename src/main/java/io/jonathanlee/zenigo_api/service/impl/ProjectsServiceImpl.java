package io.jonathanlee.zenigo_api.service.impl;

import io.jonathanlee.zenigo_api.domain.Project;
import io.jonathanlee.zenigo_api.mapper.ProjectsMapper;
import io.jonathanlee.zenigo_api.service.ProjectsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProjectsServiceImpl implements ProjectsService {

    private final ProjectsMapper projectsMapper;

    @Override
    public List<Project> getAllProjects() {
        return this.projectsMapper.getAllProjects();
    }
}
