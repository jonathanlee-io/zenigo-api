package io.jonathanlee.zenigo_api.controller;

import io.jonathanlee.zenigo_api.domain.Project;
import io.jonathanlee.zenigo_api.service.ProjectsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/projects")
public class ProjectsController {

    private final ProjectsService projectsService;

    @GetMapping
    public ResponseEntity<List<Project>> getProjects() {
        return ResponseEntity.ok(this.projectsService.getAllProjects());
    }

}
