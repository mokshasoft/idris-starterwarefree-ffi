#
# Copyright 2018, Mokshasoft AB (mokshasoft.com)
#
# This software may be distributed and modified according to the terms of
# the BSD 2-Clause license. Note that NO WARRANTY is provided.
# See "LICENSE_BSD2.txt" for details.
#

cmake_minimum_required(VERSION 3.7.2)

file(GLOB driver_files
    StarterWareFree/Drivers.idr
)
idris_add_module(StarterWareFree.Drivers ${driver_files})
idris_module_link_libraries(StarterWareFree.Drivers drivers)

file(GLOB platform_files
    StarterWareFree/Platform.idr
)
idris_add_module(StarterWareFree.Platform ${platform_files})
idris_module_link_libraries(StarterWareFree.Platform platform)

file(GLOB utils_files
    StarterWareFree/Utils.idr
)
idris_add_module(StarterWareFree.Utils ${utils_files})
idris_module_link_libraries(StarterWareFree.Utils utils)
