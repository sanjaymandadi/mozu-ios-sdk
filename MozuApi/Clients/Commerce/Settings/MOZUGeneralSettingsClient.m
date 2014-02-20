
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUGeneralSettingsClient.h"
#import "MOZUGeneralSettingsUrl.h"
#import "MozuGeneralSettings.h"


@implementation MOZUGeneralSettingsClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetGeneralSettingsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUGeneralSettingsURL URLForGetGeneralSettingsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUGeneralSettings alloc] initWithString:jsonResult error:nil];
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

+(MOZUClient*)clientForUpdateGeneralSettingsOperationWithBody:(MOZUGeneralSettings*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUGeneralSettingsURL URLForUpdateGeneralSettingsOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUGeneralSettings alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end