/***********************************************************************
*
* Copyright (c) 2012-2023 Barbara Geller
* Copyright (c) 2012-2023 Ansel Sermersheim
*
* Copyright (C) 2015 The Qt Company Ltd.
* Copyright (c) 2012-2016 Digia Plc and/or its subsidiary(-ies).
* Copyright (c) 2008-2012 Nokia Corporation and/or its subsidiary(-ies).
*
* This file is part of CopperSpice.
*
* CopperSpice is free software. You can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* version 2.1 as published by the Free Software Foundation.
*
* CopperSpice is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* https://www.gnu.org/licenses/
*
***********************************************************************/

#ifndef CS_BUILD_INFO_H_IN
#define CS_BUILD_INFO_H_IN

// CopperSpice Version  "1.0.0"
#define CS_VERSION_STR  "1.8.2"

// CopperSpice Version  0x010000  (major << 16) + (minor << 8) + patch
#define CS_VERSION      0x010802

#if defined(__cplusplus)
   struct CsLibraryInfo {
      static constexpr const char *install_prefix = "/usr/local";
      static constexpr const char *built_for = "x86_64-linux-gnu";
   };
#endif

#endif
