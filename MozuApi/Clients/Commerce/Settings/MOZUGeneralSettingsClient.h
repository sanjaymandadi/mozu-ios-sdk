
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
#import "MOZUGeneralSettings.h"


@interface MOZUGeneralSettingsClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a site's general global settings.
*/

+(MOZUClient*)clientForGetGeneralSettingsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims;


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
Updates a site's general global settings.
@param body The properties of the site's general settings to update.
*/

+(MOZUClient*)clientForUpdateGeneralSettingsOperationWithBody:(MOZUGeneralSettings*)body userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end