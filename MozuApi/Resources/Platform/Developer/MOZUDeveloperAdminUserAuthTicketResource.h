
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
#import "MOZUAPIContext.h"

#import "MOZUUserAuthInfo.h"
#import "MOZUDeveloperAdminUserAuthTicket.h"


@interface MOZUDeveloperAdminUserAuthTicketResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

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
Generate an authentication ticket for a developer account.
@param userAuthInfo The user authentication information required to generate the developer account user authentication ticket, which consists of a user name and password.
@param developerAccountId Unique identifier of the developer account.
*/

-(void)createDeveloperUserAuthTicketWithUserAuthInfo:(MOZUUserAuthInfo*)userAuthInfo developerAccountId:(NSNumber*)developerAccountId completionHandler:(void(^)(MOZUDeveloperAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Generates a new developer account authentication ticket for the specified tenant by supplying the defined refresh token information.
@param existingAuthTicket Properties of the authentication ticket to refresh. The refresh token is required to complete this request.
@param developerAccountId Unique identifier of the developer account.
*/

-(void)refreshDeveloperAuthTicketWithExistingAuthTicket:(MOZUExistingAuthTicket*)existingAuthTicket developerAccountId:(NSNumber*)developerAccountId completionHandler:(void(^)(MOZUDeveloperAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the authentication ticket for the developer account by supplying the refresh token.
@param refreshToken Refresh token string associated with the developer account authentication ticket.
*/

-(void)deleteUserAuthTicketWithRefreshToken:(NSString*)refreshToken completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end