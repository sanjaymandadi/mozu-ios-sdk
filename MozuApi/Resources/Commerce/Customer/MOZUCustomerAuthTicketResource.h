
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

#import "MOZUCustomerUserAuthInfo.h"
#import "MOZUCustomerAuthTicket.h"


@interface MOZUCustomerAuthTicketResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Creates an authentication ticket for an anonymous shopper user.
*/

- (void)createAnonymousShopperAuthTicketWithCompletionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Generates a new authentication ticket for a customer account.
@param body The authentication information required to generate an authentication ticket for a customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createUserAuthTicketWithBody:(MOZUCustomerUserAuthInfo *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes an existing authentication ticket for a customer account by providing the refresh token string.
@param refreshToken Alphanumeric string used for access tokens. This token refreshes access for accounts by generating a new developer or application account authentication ticket after an access token expires.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)refreshUserAuthTicketWithRefreshToken:(NSString *)refreshToken responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end