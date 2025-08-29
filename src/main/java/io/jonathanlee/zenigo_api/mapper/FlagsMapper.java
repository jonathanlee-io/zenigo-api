package io.jonathanlee.zenigo_api.mapper;

import io.jonathanlee.zenigo_api.domain.FeatureFlag;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FlagsMapper {

    @Select("SELECT id, project_id, name, key, description, flag_type, default_value, is_permanent, created_at, updated_at, created_by FROM feature_flags")
    List<FeatureFlag> getAllFlags();
}
