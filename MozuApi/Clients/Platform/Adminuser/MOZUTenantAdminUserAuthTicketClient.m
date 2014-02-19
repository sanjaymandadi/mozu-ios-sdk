
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTenantAdminUserAuthTicketClient.h"
#import "MOZUTenantAdminUserAuthTicketUrl.h"
#import "MozuTenantAdminUserAuthTicket.h"


@implementation MOZUTenantAdminUserAuthTicketClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateUserAuthTicketOperationWithUserAuthInfo:(MOZUUserAuthInfo*)userAuthInfo tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUTenantAdminUserAuthTicketURL URLForCreateUserAuthTicketOperationWithTenantId:tenantId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantAdminUserAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForRefreshAuthTicketOperationWithExistingAuthTicket:(MOZUTenantAdminUserAuthTicket*)existingAuthTicket tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUTenantAdminUserAuthTicketURL URLForRefreshAuthTicketOperationWithTenantId:tenantId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantAdminUserAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteUserAuthTicketOperationWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUTenantAdminUserAuthTicketURL URLForDeleteUserAuthTicketOperationWithRefreshToken:refreshToken];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end