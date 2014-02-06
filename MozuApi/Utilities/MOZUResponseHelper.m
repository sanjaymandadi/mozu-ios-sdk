//
//  MOZUResponseHelper.m
//  MozuApi
//
//  Created by Kevin Wright on 11/22/13.
//  Copyright (c) 2013 Volusion. All rights reserved.
//

#import "MOZUResponseHelper.h"

@implementation MOZUResponseHelper

+(MOZUApiError*)ensureSuccessOfResponse:(NSHTTPURLResponse*)response andJsonResult:(NSString*)json {
    if (response.statusCode < 200 || response.statusCode > 299) {
        return [[MOZUApiError alloc] initWithString:json andStatusCode:(int)response.statusCode];
    }
    else {
        return nil;
    }
}

@end
