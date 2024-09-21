#===--- NlangCMakePolicy.cmake - LLVM's CMake policy settings --*- CMake -*-===#
#                                                                              #
# Copyright (c) 2024 The Nlang contributors.                                   #
# Visit CONTRIBUTORS.txt for the list of Nlang authors.                        #
#                                                                              #
# Part of the Nlang compiler, under the Apache License v2.0.                   #
# See LICENSE.txt for license information.                                     #
# SPDX-License-Identifier: Apache-2.0                                          #
#                                                                              #
#===------------------------------------------------------------------------===#
#                                                                              #
# This file adds LLVM's CMake policy settings to Nlang because they are not    #
# included in LLVM's installation.                                             #
#                                                                              #
# Please keep this module in sync with its equivalent because Nlang's          #
# out-of-tree build depends on it.                                             #
#                                                                              #
#===------------------------------------------------------------+- CMake -+-===#

#===------------------------------------------------------------------------===#
# Old behaviour                                                                #
#===------------------------------------------------------------------------===#

# ExternalProject step targets fully adopt their steps.
if(POLICY CMP0114)
  cmake_policy(SET CMP0114 OLD)
endif()

# Ninja generators transform "DEPFILE"s from add_custom_command.
if(POLICY CMP0116)
  cmake_policy(SET CMP0116 OLD)
endif()

#===------------------------------------------------------------------------===#
# New behaviour                                                                #
#===------------------------------------------------------------------------===#

# MSVC debug information format flags are selected by an abstraction.
if(POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
endif()

# Uppercase <PackageName>_ROOT variables are used by find_package.
if(POLICY CMP0144)
  cmake_policy(SET CMP0144 NEW)
endif()
