{-
Copyright 2018, Mokshasoft AB (mokshasoft.com)

This software may be distributed and modified according to the terms of
the BSD 2-Clause license. Note that NO WARRANTY is provided.
See "LICENSE_BSD2.txt" for details.
-}

{-
  FFI for gpio_v2.h:
    https://github.com/mokshasoft/starterwarefree/blob/master/include/gpio_v2.h
-}

module StarterWareFree.Drivers

%access public export
%default total
%include C "gpio_v2.h"

GPIO_DIR_OUTPUT : Int
GPIO_DIR_OUTPUT = 0x0

GPIO_PIN_HIGH : Int
GPIO_PIN_HIGH = 0x1

GPIO_PIN_LOW : Int
GPIO_PIN_LOW = 0x0

GPIOModuleReset : Int -> IO ()
GPIOModuleReset baseAdd =
    foreign FFI_C "GPIOModuleReset" (Int -> IO ()) baseAdd

GPIOModuleEnable : Int -> IO ()
GPIOModuleEnable baseAdd =
    foreign FFI_C "GPIOModuleEnable" (Int -> IO ()) baseAdd

GPIOModuleDisable : Int -> IO ()
GPIOModuleDisable baseAdd =
    foreign FFI_C "GPIOModuleDisable" (Int -> IO ()) baseAdd

GPIODirModeSet : Int -> Int -> Int -> IO ()
GPIODirModeSet baseAdd pinNumber pinDirection =
    foreign FFI_C "GPIODirModeSet" (Int -> Int -> Int -> IO ()) baseAdd pinNumber pinDirection

GPIODirModeGet : Int -> Int -> IO Int
GPIODirModeGet baseAdd pinNumber =
    foreign FFI_C "GPIODirModeGet" (Int -> Int -> IO Int) baseAdd pinNumber

GPIOPinWrite : Int -> Int -> Int -> IO ()
GPIOPinWrite baseAdd pinNumber pinValue =
    foreign FFI_C "GPIOPinWrite" (Int -> Int -> Int -> IO ()) baseAdd pinNumber pinValue

GPIOPinRead : Int -> Int -> IO Int
GPIOPinRead baseAdd pinNumber =
    foreign FFI_C "GPIOPinRead" (Int -> Int -> IO Int) baseAdd pinNumber

GPIOMultiplePinsWrite : Int -> Int -> Int -> IO ()
GPIOMultiplePinsWrite baseAdd setMask clrMask =
    foreign FFI_C "GPIOMultiplePinsWrite" (Int -> Int -> Int -> IO ()) baseAdd setMask clrMask

GPIOMultiplePinsRead : Int -> Int -> IO Int
GPIOMultiplePinsRead baseAdd readMask =
    foreign FFI_C "GPIOMultiplePinsRead" (Int -> Int -> IO Int) baseAdd readMask

GPIOPinIntEnable : Int -> Int -> Int -> IO ()
GPIOPinIntEnable baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntEnable" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIOPinIntDisable : Int -> Int -> Int -> IO ()
GPIOPinIntDisable baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntDisable" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIOIntTypeSet : Int -> Int -> Int -> IO ()
GPIOIntTypeSet baseAdd pinNumber eventType =
    foreign FFI_C "GPIOIntTypeSet" (Int -> Int -> Int -> IO ()) baseAdd pinNumber eventType

GPIOIntTypeGet : Int -> Int -> IO Int
GPIOIntTypeGet baseAdd pinNumber =
    foreign FFI_C "GPIOIntTypeGet" (Int -> Int -> IO Int) baseAdd pinNumber

GPIOPinIntStatus : Int -> Int -> Int -> IO Int
GPIOPinIntStatus baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntStatus" (Int -> Int -> Int -> IO Int) baseAdd intLine pinNumber

GPIOPinIntClear : Int -> Int -> Int -> IO ()
GPIOPinIntClear baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntClear" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIORawIntStatus : Int -> Int -> Int -> IO Int
GPIORawIntStatus baseAdd intLine readMask =
    foreign FFI_C "GPIORawIntStatus" (Int -> Int -> Int -> IO Int) baseAdd intLine readMask

GPIOTriggerPinInt : Int -> Int -> Int -> IO ()
GPIOTriggerPinInt baseAdd intLine pinNumber =
    foreign FFI_C "GPIOTriggerPinInt" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIOWakeupGlobalEnable : Int -> IO ()
GPIOWakeupGlobalEnable baseAdd =
    foreign FFI_C "GPIOWakeupGlobalEnable" (Int -> IO ()) baseAdd

GPIOWakeupGlobalDisable : Int -> IO ()
GPIOWakeupGlobalDisable baseAdd =
    foreign FFI_C "GPIOWakeupGlobalDisable" (Int -> IO ()) baseAdd

GPIOPinIntWakeUpEnable : Int -> Int -> Int -> IO ()
GPIOPinIntWakeUpEnable baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntWakeUpEnable" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIOPinIntWakeUpDisable : Int -> Int -> Int -> IO ()
GPIOPinIntWakeUpDisable baseAdd intLine pinNumber =
    foreign FFI_C "GPIOPinIntWakeUpDisable" (Int -> Int -> Int -> IO ()) baseAdd intLine pinNumber

GPIOAutoIdleModeControl : Int -> Int -> IO ()
GPIOAutoIdleModeControl baseAdd modeFlag =
    foreign FFI_C "GPIOAutoIdleModeControl" (Int -> Int -> IO ()) baseAdd modeFlag

GPIOIdleModeConfigure : Int -> Int -> IO ()
GPIOIdleModeConfigure baseAdd modeFlag =
    foreign FFI_C "GPIOIdleModeConfigure" (Int -> Int -> IO ()) baseAdd modeFlag

GPIOGatingRatioConfigure : Int -> Int -> IO ()
GPIOGatingRatioConfigure baseAdd configFlag =
    foreign FFI_C "GPIOGatingRatioConfigure" (Int -> Int -> IO ()) baseAdd configFlag

GPIODebounceFuncControl : Int -> Int -> Int -> IO ()
GPIODebounceFuncControl baseAdd pinNumber controlFlag =
    foreign FFI_C "GPIODebounceFuncControl" (Int -> Int -> Int -> IO ()) baseAdd pinNumber controlFlag

GPIODebounceTimeConfig : Int -> Int -> IO ()
GPIODebounceTimeConfig baseAdd debounceTime =
    foreign FFI_C "GPIODebounceTimeConfig" (Int -> Int -> IO ()) baseAdd debounceTime

GPIORevisionInfoGet : Int -> IO Int
GPIORevisionInfoGet baseAdd =
    foreign FFI_C "GPIORevisionInfoGet" (Int -> IO Int) baseAdd
