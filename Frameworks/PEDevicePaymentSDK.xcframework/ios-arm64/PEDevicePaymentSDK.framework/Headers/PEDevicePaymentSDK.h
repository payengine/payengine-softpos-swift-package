//
//  PEDevicePaymentSDK.h
//  PEDevicePaymentSDK
//
//  Created by Tri Nguyen on 30/11/2023.
//

#import <Foundation/Foundation.h>
//#import <PEIDTechWrapper/PEIDTechWrapper.h>

//! Project version number for PEDevicePaymentSDK.
FOUNDATION_EXPORT double PEDevicePaymentSDKVersionNumber;

//! Project version string for PEDevicePaymentSDK.
FOUNDATION_EXPORT const unsigned char PEDevicePaymentSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <PEDevicePaymentSDK/PublicHeader.h>

#ifdef ENABLE_IDTECH

#ifndef IDTECH_IMPORTED
#define IDTECH_IMPORTED
#import <IDTech/IDTech.h>
#endif

#endif
