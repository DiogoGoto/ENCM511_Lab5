include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Lab5_default_library_list )

set(OUTPUT_SUFFIX elf)
# Handle files with suffix s, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_assemble)
add_library(Lab5_default_default_XC16_assemble OBJECT ${Lab5_default_default_XC16_FILE_TYPE_assemble})
    Lab5_default_default_XC16_assemble_rule(Lab5_default_default_XC16_assemble)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_assemble>")

endif()

# Handle files with suffix S, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_assemblePreproc)
add_library(Lab5_default_default_XC16_assemblePreproc OBJECT ${Lab5_default_default_XC16_FILE_TYPE_assemblePreproc})
    Lab5_default_default_XC16_assemblePreproc_rule(Lab5_default_default_XC16_assemblePreproc)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_assemblePreproc>")

endif()

# Handle files with suffix c, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_compile)
add_library(Lab5_default_default_XC16_compile OBJECT ${Lab5_default_default_XC16_FILE_TYPE_compile})
    Lab5_default_default_XC16_compile_rule(Lab5_default_default_XC16_compile)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_compile>")

endif()

# Handle files with suffix s, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_dependentObject)
add_library(Lab5_default_default_XC16_dependentObject OBJECT ${Lab5_default_default_XC16_FILE_TYPE_dependentObject})
    Lab5_default_default_XC16_dependentObject_rule(Lab5_default_default_XC16_dependentObject)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_dependentObject>")

endif()

# Handle files with suffix elf, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_bin2hex)
add_library(Lab5_default_default_XC16_bin2hex OBJECT ${Lab5_default_default_XC16_FILE_TYPE_bin2hex})
    Lab5_default_default_XC16_bin2hex_rule(Lab5_default_default_XC16_bin2hex)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_bin2hex>")

endif()

# Handle files with suffix elf, for group default-XC16
if(Lab5_default_default_XC16_FILE_TYPE_objcopy_lss)
add_library(Lab5_default_default_XC16_objcopy_lss OBJECT ${Lab5_default_default_XC16_FILE_TYPE_objcopy_lss})
    Lab5_default_default_XC16_objcopy_lss_rule(Lab5_default_default_XC16_objcopy_lss)
    list(APPEND Lab5_default_library_list "$<TARGET_OBJECTS:Lab5_default_default_XC16_objcopy_lss>")

endif()


# Main target for this project
add_executable(Lab5_default_image_6AVDTw9l ${Lab5_default_library_list})

set_target_properties(Lab5_default_image_6AVDTw9l PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    RUNTIME_OUTPUT_DIRECTORY "${Lab5_default_output_dir}")
target_link_libraries(Lab5_default_image_6AVDTw9l PRIVATE ${Lab5_default_default_XC16_FILE_TYPE_link})
# Add the link options from the rule file.
Lab5_default_link_rule( Lab5_default_image_6AVDTw9l)

# Call bin2hex function from the rule file
Lab5_default_bin2hex_rule(Lab5_default_image_6AVDTw9l)

#Add objcopy steps
Lab5_default_objcopy_lss_rule(Lab5_default_image_6AVDTw9l)

