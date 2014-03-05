
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAuthTicketClient.h"
#import "MOZUAuthTicketURLComponents.h"
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

+(MOZUClient*)clientForAuthenticateAppOperationWithBody:(MOZUAppAuthInfo*)body {
	id url = [MOZUAuthTicketURLComponents URLComponentsForAuthenticateAppOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

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

+(MOZUClient*)clientForRefreshAppAuthTicketOperationWithBody:(MOZUAuthTicketRequest*)body {
	id url = [MOZUAuthTicketURLComponents URLComponentsForRefreshAppAuthTicketOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

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

+(MOZUClient*)clientForDeleteAppAuthTicketOperationWithRefreshToken:(NSString *)refreshToken {
	id url = [MOZUAuthTicketURLComponents URLComponentsForDeleteAppAuthTicketOperationWithRefreshToken:refreshToken];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end