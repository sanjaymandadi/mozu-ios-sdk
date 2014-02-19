
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAuthTicketClient.h"
#import "MOZUCustomerAuthTicketUrl.h"
#import "MozuCustomerAuthTicket.h"


@implementation MOZUCustomerAuthTicketClient

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

+(MOZUClient*)clientForCreateUserAuthTicketOperationWithBody:(MOZUCustomerUserAuthInfo*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerAuthTicketURL URLForCreateUserAuthTicketOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (body != nil) {
		client.body = body;
	}

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForRefreshUserAuthTicketOperationWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerAuthTicketURL URLForRefreshUserAuthTicketOperationWithRefreshToken:refreshToken];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end