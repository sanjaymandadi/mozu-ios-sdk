
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAuthTicketClient.h"
#import "MOZUAuthTicketUrl.h"
#import "MozuAuthTicket.h"


@implementation MOZUAuthTicketClient

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

+(MOZUClient*)clientForAuthenticateAppOperationWithWithAppAuthInfo:(MOZUAppAuthInfo*)appAuthInfo {
	id url = [MOZUAuthTicketURL URLForAuthenticateAppOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForRefreshAppAuthTicketOperationWithWithAuthTicketRequest:(MOZUAuthTicketRequest*)authTicketRequest {
	id url = [MOZUAuthTicketURL URLForRefreshAppAuthTicketOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteAppAuthTicketOperationWithWithRefreshToken:(NSString*)refreshToken {
	id url = [MOZUAuthTicketURL URLForDeleteAppAuthTicketOperationWithRefreshToken:refreshToken];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	return client;
}



@end