
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
#import "MOZUInstalledApplications.h"


@interface MOZUPlatformApplicationClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param appId 
*/

+(MOZUClient*)clientForGetApplicationOperationWithAppId:(NSString *)appId userClaims:(MOZUUserAuthTicket*)userClaims;


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

@param body 
@param appId 
*/

+(MOZUClient*)clientForUpdateApplicationOperationWithBody:(MOZUInstalledApplications*)body appId:(NSString *)appId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end