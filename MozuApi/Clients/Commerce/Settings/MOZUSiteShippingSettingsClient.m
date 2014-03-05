
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingSettingsClient.h"
#import "MOZUSiteShippingSettingsURLComponents.h"
#import "MozuSiteShippingSettings.h"


@implementation MOZUSiteShippingSettingsClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetSiteShippingSettingsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUSiteShippingSettingsURLComponents URLComponentsForGetSiteShippingSettingsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingSettings alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end