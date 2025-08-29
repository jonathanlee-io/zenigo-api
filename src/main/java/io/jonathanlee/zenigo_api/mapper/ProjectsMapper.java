package io.jonathanlee.zenigo_api.mapper;

import io.jonathanlee.zenigo_api.domain.Project;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProjectsMapper {

    @Select("SELECT id, organization_id, name, key, description, created_at, updated_at, is_active FROM projects")
    List<Project> getAllProjects();
}
