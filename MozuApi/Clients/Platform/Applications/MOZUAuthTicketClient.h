
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
#import "MOZUAppAuthInfo.h"
#import "MOZUAuthTicket.h"
#import "MOZUAuthTicketRequest.h"


@interface MOZUAuthTicketClient : NSObject

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

+(MOZUClient*)clientForAuthenticateAppOperationWithBody:(MOZUAppAuthInfo*)body;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes the application's authentication ticket and generates a new access token by providing the refresh token string.
@param body The refresh token string required to update the application authentication ticket.
*/

+(MOZUClient*)clientForRefreshAppAuthTicketOperationWithBody:(MOZUAuthTicketRequest*)body;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes an authentication for an application based on the specified refresh token.
@param refreshToken The refresh token string from the application's authentication ticket.
*/

+(MOZUClient*)clientForDeleteAppAuthTicketOperationWithRefreshToken:(NSString *)refreshToken;



@end