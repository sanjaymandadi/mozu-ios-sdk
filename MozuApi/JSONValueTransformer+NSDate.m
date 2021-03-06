//
//  JSONValueTransformer+NSDate.m
//  MozuApi
//
//  Created by Kevin Wright on 11/1/13.
//  Copyright (c) 2013 Volusion. All rights reserved.
//

#import "JSONValueTransformer+NSDate.h"


@implementation JSONValueTransformer (NSDate)

-(NSDate*)NSDateFromNSString:(NSString*)string
{
    NSDate* retVal = nil;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZ"];
    retVal = [dateFormatter dateFromString:string];
    return retVal;
}

-(NSString*)JSONObjectFromNSDate:(NSDate*)date
{
    NSString* retVal = nil;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZ"];
    retVal = [dateFormatter stringFromDate:date];
    return retVal;
}


@end
