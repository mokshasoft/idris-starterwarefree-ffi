{-
Copyright 2019, Mokshasoft AB (mokshasoft.com)

This software may be distributed and modified according to the terms of
the BSD 2-Clause license. Note that NO WARRANTY is provided.
See "LICENSE_BSD2.txt" for details.
-}

module StarterWareFree.Utils

%access public export
%default total
%include C "consoleUtils.h"

ConsoleUtilsInit : IO ()
ConsoleUtilsInit =
    foreign FFI_C "ConsoleUtilsInit" (IO ())

ConsoleUtilsSetType : Int -> IO ()
ConsoleUtilsSetType type =
    foreign FFI_C "ConsoleUtilsSetType" (Int -> IO ()) type

ConsoleUtilsPrintf : String -> IO ()
ConsoleUtilsPrintf str =
    foreign FFI_C "ConsoleUtilsPrintf" (String -> IO ()) str
