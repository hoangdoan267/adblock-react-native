//
//  FilteredURLProtocol.h
//  Adblock
//
//  Created by Hoang Doan on 1/17/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

@interface FilteredURLProtocol : NSURLProtocol
+(BOOL)canInitWithRequest:(NSURLRequest *)request;
+(NSURLRequest *)canonicalRequestForRequest:( NSURLRequest *)request;
-(void)startLoading;
-(void)stopLoading;
@end

