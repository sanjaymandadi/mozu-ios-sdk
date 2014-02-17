
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUApplicationClient.h"
#import "MOZUApplicationUrl.h"
#import "MozuSiteSettingsApplication.h"


@implementation MOZUApplicationClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForThirdPartyGetApplicationOperation userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationURL URLForThirdPartyGetApplicationOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteSettingsApplication alloc] initWithString:jsonResult error:nil];
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

+(MOZUClient*)clientForThirdPartyUpdateApplicationOperationWithWithApplication:(MOZUSiteSettingsApplication*)application userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationURL URLForThirdPartyUpdateApplicationOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteSettingsApplication alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end