include (GSettings)
add_schema ("org.pantheon.noise.gschema.xml")

include (Translations)

# We need to create two temporary desktop files in order to have all translations available.
set (APP_NAME "Music")
configure_file(org.pantheon.noise.desktop.in.in ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.desktop.in)
set (APP_NAME "Noise")
configure_file(org.pantheon.noise.desktop.in.in ${CMAKE_CURRENT_BINARY_DIR}/noise-original.desktop.in)
if (BUILD_FOR_ELEMENTARY)
    configure_file_translation(${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.desktop.in ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.desktop ${CMAKE_SOURCE_DIR}/po/)
else ()
    configure_file_translation(${CMAKE_CURRENT_BINARY_DIR}/noise-original.desktop.in ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.desktop ${CMAKE_SOURCE_DIR}/po/)
endif ()

configure_file_translation(${CMAKE_CURRENT_SOURCE_DIR}/org.pantheon.noise.appdata.xml.in ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.appdata.xml ${CMAKE_SOURCE_DIR}/po/)

install (FILES ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.appdata.xml DESTINATION share/metainfo)
install (FILES ${CMAKE_CURRENT_BINARY_DIR}/org.pantheon.noise.desktop DESTINATION share/applications)
