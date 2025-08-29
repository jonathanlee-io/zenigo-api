package io.jonathanlee.zenigo_api.mapper;

import io.jonathanlee.zenigo_api.domain.Organization;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface OrganizationsMapper {

    @Select("SELECT id, name, slug, description, created_at, updated_at, is_active FROM organizations")
    List<Organization> getAllOrganizations();
}
