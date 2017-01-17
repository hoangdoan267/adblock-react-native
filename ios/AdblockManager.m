//
//  AdblockManager.m
//  Adblock
//
//  Created by Hoang Doan on 1/17/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdblockManager.h"
#import "FilteredURLProtocol.h"
@implementation AdblockManager


RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setAdblock:(RCTResponseSenderBlock)callback)
{
  [NSURLProtocol registerClass:FilteredURLProtocol.class];
  NSString* result = @"setAdblock";
  callback(@[result]);
  
}

RCT_EXPORT_METHOD(unsetAdblock:(RCTResponseSenderBlock)callback)
{
  [NSURLProtocol unregisterClass:FilteredURLProtocol.class];
  NSString* result = @"unsetAdblock";
  callback(@[result]);
}
@end
