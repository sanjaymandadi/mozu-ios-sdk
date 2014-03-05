
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAuthTicketClient.h"
#import "MOZUAuthTicketResource.h"



@implementation MOZUAuthTicketResource


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

/**
Generate an authentication ticket for an application.
@param body Authentication information required to generate an authentication ticket includes the application id and the shared secret.
*/

-(void)authenticateAppWithBody:(MOZUAppAuthInfo*)body completionHandler:(void(^)(MOZUAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUAuthTicketClient clientForAuthenticateAppOperationWithBody:body];
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes the application's authentication ticket and generates a new access token by providing the refresh token string.
@param body The refresh token string required to update the application authentication ticket.
*/

-(void)refreshAppAuthTicketWithBody:(MOZUAuthTicketRequest*)body completionHandler:(void(^)(MOZUAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUAuthTicketClient clientForRefreshAppAuthTicketOperationWithBody:body];
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes an authentication for an application based on the specified refresh token.
@param refreshToken The refresh token string from the application's authentication ticket.
*/

-(void)deleteAppAuthTicketWithRefreshToken:(NSString *)refreshToken completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUAuthTicketClient clientForDeleteAppAuthTicketOperationWithRefreshToken:refreshToken];
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end