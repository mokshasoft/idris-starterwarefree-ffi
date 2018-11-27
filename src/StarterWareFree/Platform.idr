{-
Copyright 2018, Mokshasoft AB (mokshasoft.com)

This software may be distributed and modified according to the terms of
the BSD 2-Clause license. Note that NO WARRANTY is provided.
See "LICENSE_BSD2.txt" for details.
-}

{-
  FFI for include/armv7a/am335x/beaglebone.h:
    https://github.com/mokshasoft/starterwarefree/blob/master/include/armv7a/am335x/beaglebone.h
-}

module StarterWareFree.Platform

%access public export
%default total
%include C "beaglebone.h"

GPIO1ModuleClkConfig : IO ()
GPIO1ModuleClkConfig =
    foreign FFI_C "GPIO1ModuleClkConfig" (IO ())

GPIO1Pin23PinMuxSetup : IO ()
GPIO1Pin23PinMuxSetup =
    foreign FFI_C "GPIO1Pin23PinMuxSetup" (IO ())
