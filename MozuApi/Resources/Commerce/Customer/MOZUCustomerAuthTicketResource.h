
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

#import "MOZUAuthTicket.h"
#import "MOZUCustomerUserAuthInfo.h"
#import "MOZUCustomerAuthTicket.h"


@interface MOZUCustomerAuthTicketResource : NSObject
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
Generates a new authentication ticket for a customer account.
@param userAuthInfo The authentication information required to generate an authetication ticket for a user, which consists of a user name and password.
*/

-(void)createUserAuthTicketWithUserAuthInfo:(MOZUCustomerUserAuthInfo*)userAuthInfo userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes an existing authentication ticket for a customer account by providing the refresh token string.
@param refreshToken The refresh token string required to refresh a user's authentication ticket.
*/

-(void)refreshUserAuthTicketWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end