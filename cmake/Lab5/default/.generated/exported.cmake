set(DEPENDENT_MP_BIN2HEXLab5_default_6AVDTw9l "c:/Program Files/Microchip/xc16/v2.10/bin/xc16-bin2hex.exe")
set(DEPENDENT_DEPENDENT_TARGET_ELFLab5_default_6AVDTw9l ${CMAKE_CURRENT_LIST_DIR}/../../../../out/Lab5/default.elf)
set(DEPENDENT_TARGET_DIRLab5_default_6AVDTw9l ${CMAKE_CURRENT_LIST_DIR}/../../../../out/Lab5)
set(DEPENDENT_BYPRODUCTSLab5_default_6AVDTw9l ${DEPENDENT_TARGET_DIRLab5_default_6AVDTw9l}/${sourceFileNameLab5_default_6AVDTw9l}.s)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRLab5_default_6AVDTw9l}/${sourceFileNameLab5_default_6AVDTw9l}.s
    COMMAND ${DEPENDENT_MP_BIN2HEXLab5_default_6AVDTw9l} ${DEPENDENT_DEPENDENT_TARGET_ELFLab5_default_6AVDTw9l} --image ${sourceFileNameLab5_default_6AVDTw9l} ${addressLab5_default_6AVDTw9l} ${modeLab5_default_6AVDTw9l} -mdfp=C:/Users/diogo/.mchp_packs/Microchip/PIC24F-GA-GB_DFP/1.11.479/xc16 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRLab5_default_6AVDTw9l}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFLab5_default_6AVDTw9l})
add_custom_target(
    dependent_produced_source_artifactLab5_default_6AVDTw9l 
    DEPENDS ${DEPENDENT_TARGET_DIRLab5_default_6AVDTw9l}/${sourceFileNameLab5_default_6AVDTw9l}.s
    )
