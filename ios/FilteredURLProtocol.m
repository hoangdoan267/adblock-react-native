//
//  FilteredURLProtocol.m
//  Adblock
//
//  Created by Hoang Doan on 1/17/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FilteredURLProtocol.h"

@implementation FilteredURLProtocol
+(BOOL)canInitWithRequest:(NSURLRequest *)request
{
  NSString *host = request.URL.host;
  if ([host rangeOfString:@"ad"].length) return YES; // <- ここの条件でコンテンツを出し分ける
  return NO;
}

+(NSURLRequest *)canonicalRequestForRequest:( NSURLRequest *)request
{
  return request;
}

-(void)startLoading
{
  NSURLResponse *response = [[NSURLResponse alloc] initWithURL:self.request.URL MIMEType:nil expectedContentLength:0 textEncodingName:nil];
  [self.client URLProtocol:self didReceiveResponse:response cacheStoragePolicy:NSURLCacheStorageNotAllowed];
  [self.client URLProtocol:self didLoadData:[NSData dataWithBytes:nil length:0]];
  [self.client URLProtocolDidFinishLoading:self];
}

-(void)stopLoading
{}

@end
