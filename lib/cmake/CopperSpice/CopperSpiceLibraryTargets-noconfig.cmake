#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CopperSpice::CsCore" for configuration ""
set_property(TARGET CopperSpice::CsCore APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsCore PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsCore1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsCore1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsCore "${_IMPORT_PREFIX}/lib/libCsCore1.8.so" )

# Import target "CopperSpice::CsXml" for configuration ""
set_property(TARGET CopperSpice::CsXml APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsXml PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsXml1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsXml1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsXml )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsXml "${_IMPORT_PREFIX}/lib/libCsXml1.8.so" )

# Import target "CopperSpice::CsGui" for configuration ""
set_property(TARGET CopperSpice::CsGui APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsGui PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsGui1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsGui1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsGui )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsGui "${_IMPORT_PREFIX}/lib/libCsGui1.8.so" )

# Import target "CopperSpice::CsMultimedia" for configuration ""
set_property(TARGET CopperSpice::CsMultimedia APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsMultimedia PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsMultimedia1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsMultimedia1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsMultimedia )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsMultimedia "${_IMPORT_PREFIX}/lib/libCsMultimedia1.8.so" )

# Import target "CopperSpice::CsNetwork" for configuration ""
set_property(TARGET CopperSpice::CsNetwork APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsNetwork PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsNetwork1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsNetwork1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsNetwork )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsNetwork "${_IMPORT_PREFIX}/lib/libCsNetwork1.8.so" )

# Import target "CopperSpice::CsOpenGL" for configuration ""
set_property(TARGET CopperSpice::CsOpenGL APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsOpenGL PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsOpenGL1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsOpenGL1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsOpenGL )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsOpenGL "${_IMPORT_PREFIX}/lib/libCsOpenGL1.8.so" )

# Import target "CopperSpice::CsScript" for configuration ""
set_property(TARGET CopperSpice::CsScript APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsScript PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsScript1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsScript1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsScript )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsScript "${_IMPORT_PREFIX}/lib/libCsScript1.8.so" )

# Import target "CopperSpice::CsSql" for configuration ""
set_property(TARGET CopperSpice::CsSql APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsSql PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsSql1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsSql1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsSql )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsSql "${_IMPORT_PREFIX}/lib/libCsSql1.8.so" )

# Import target "CopperSpice::CsSvg" for configuration ""
set_property(TARGET CopperSpice::CsSvg APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsSvg PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore;CopperSpice::CsGui"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsSvg1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsSvg1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsSvg )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsSvg "${_IMPORT_PREFIX}/lib/libCsSvg1.8.so" )

# Import target "CopperSpice::CsWebKit" for configuration ""
set_property(TARGET CopperSpice::CsWebKit APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsWebKit PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore;CopperSpice::CsGui;CopperSpice::CsNetwork;CopperSpice::CsScript"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsWebKit1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsWebKit1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsWebKit )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsWebKit "${_IMPORT_PREFIX}/lib/libCsWebKit1.8.so" )

# Import target "CopperSpice::CsXmlPatterns" for configuration ""
set_property(TARGET CopperSpice::CsXmlPatterns APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsXmlPatterns PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore;CopperSpice::CsNetwork"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsXmlPatterns1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsXmlPatterns1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsXmlPatterns )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsXmlPatterns "${_IMPORT_PREFIX}/lib/libCsXmlPatterns1.8.so" )

# Import target "CopperSpice::CsXcbSupport" for configuration ""
set_property(TARGET CopperSpice::CsXcbSupport APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(CopperSpice::CsXcbSupport PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "CopperSpice::CsCore;CopperSpice::CsGui"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libCsXcbSupport1.8.so"
  IMPORTED_SONAME_NOCONFIG "libCsXcbSupport1.8.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS CopperSpice::CsXcbSupport )
list(APPEND _IMPORT_CHECK_FILES_FOR_CopperSpice::CsXcbSupport "${_IMPORT_PREFIX}/lib/libCsXcbSupport1.8.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
