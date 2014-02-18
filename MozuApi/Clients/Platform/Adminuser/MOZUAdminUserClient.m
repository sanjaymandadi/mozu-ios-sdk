
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminUserClient.h"
#import "MOZUAdminUserUrl.h"
#import "MozuTenantCollection.h"
#import "MozuUser.h"


@implementation MOZUAdminUserClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetUserOperationWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminUserURL URLForGetUserOperationWithUserId:userId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUUser alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetTenantScopesForUserOperationWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminUserURL URLForGetTenantScopesForUserOperationWithUserId:userId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantCollection alloc] initWithString:jsonResult error:nil];
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