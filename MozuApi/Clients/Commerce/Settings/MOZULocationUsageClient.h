
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAuthTicket.h"
#import "MOZULocationUsageCollection.h"
#import "MOZULocationUsage.h"


@interface MOZULocationUsageClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the configured site location usages for the location usage code specified in the request.
*/

+(MOZUClient*)clientForGetLocationUsagesOperation userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the location usages for the site specified in the request header.
@param code Code that identifies the location usage type, which is "DS" for direct ship, "SP" for in-store pickup, or "storeFinder" for store finder.
*/

+(MOZUClient*)clientForGetLocationUsageOperationWithWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the location usage for the site based on the location usage code specified in the request.
@param usage Properties of the location usage type to update.
@param code Code that identifies the location usage type, which is "DS" for direct ship, "SP" for in-store pickup, or "storeFinder" for store finder.
*/

+(MOZUClient*)clientForUpdateLocationUsageOperationWithWithUsage:(MOZULocationUsage*)usage code:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end