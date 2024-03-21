# ***********************************************************************
#
# Copyright (c) 2012-2023 Barbara Geller
# Copyright (c) 2012-2023 Ansel Sermersheim
#
# This file is part of CopperSpice.
#
# CopperSpice is free software. You can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License
# version 2.1 as published by the Free Software Foundation.
#
# CopperSpice is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# https://www.gnu.org/licenses/
#
# ***********************************************************************

set(COPPERSPICE_VERSION_MAJOR "1" PARENT_SCOPE)
set(COPPERSPICE_VERSION_MINOR "8" PARENT_SCOPE)
set(COPPERSPICE_VERSION_PATCH "2" PARENT_SCOPE)

set(COPPERSPICE_VERSION       "1.8.2" PARENT_SCOPE)
set(COPPERSPICE_VERSION_API   "1.8" PARENT_SCOPE)

set(PACKAGE_VERSION "1.8.2")

if (MSVC OR "${CS_CHECK_BUILD_TYPE}")
   # used when a downstream project calls find_package() for cs
   set(PACKAGE_VERSION_COMPATIBLE false)

   # first test the down stream project, then test cs
   set(Debug_Types "Debug" "")

   if ("${CMAKE_BUILD_TYPE}" IN_LIST Debug_Types)

      if ("" IN_LIST Debug_Types)
         set(PACKAGE_VERSION_COMPATIBLE true)
      endif()

   endif()

   # first test the down stream project, then test cs
   set(Release_Types "Release" "MinSizeRel" "RelWithDebInfo")

   if ("${CMAKE_BUILD_TYPE}" IN_LIST Release_Types)

      if("" IN_LIST Release_Types)
         set(PACKAGE_VERSION_COMPATIBLE true)
      endif()

   endif()

   if(NOT ${PACKAGE_VERSION_COMPATIBLE})
      # found a copy of cs with a mismatch build type, marked as not found
      set(PACKAGE_VERSION_UNSUITABLE true)
   endif()

endif()

# used when a downstream project calls find_package() for cs with a version number
if(PACKAGE_VERSION VERSION_LESS PACKAGE_FIND_VERSION)
   set(PACKAGE_VERSION_COMPATIBLE FALSE)
else()
   set(PACKAGE_VERSION_COMPATIBLE TRUE)

   if(PACKAGE_FIND_VERSION STREQUAL PACKAGE_VERSION)
      set(PACKAGE_VERSION_EXACT TRUE)
   endif()
endif()
