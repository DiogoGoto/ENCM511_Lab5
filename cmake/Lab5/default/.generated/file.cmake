# The following variables contains the files used by the different stages of the build process.
set(Lab5_default_default_XC16_FILE_TYPE_assemble)
set_source_files_properties(${Lab5_default_default_XC16_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${Lab5_default_default_XC16_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(Lab5_default_default_XC16_FILE_TYPE_assemblePreproc)
set_source_files_properties(${Lab5_default_default_XC16_FILE_TYPE_assemblePreproc} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${Lab5_default_default_XC16_FILE_TYPE_assemblePreproc})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(Lab5_default_default_XC16_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../main_skeleton.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../uart1.c")
set_source_files_properties(${Lab5_default_default_XC16_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(Lab5_default_default_XC16_FILE_TYPE_link)
set(Lab5_default_default_XC16_FILE_TYPE_bin2hex)
set(Lab5_default_default_XC16_FILE_TYPE_objcopy_lss)
set(Lab5_default_image_name "default.elf")
set(Lab5_default_image_base_name "default")

# The output directory of the final image.
set(Lab5_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/Lab5")

# The full path to the final image.
set(Lab5_default_full_path_to_image ${Lab5_default_output_dir}/${Lab5_default_image_name})
