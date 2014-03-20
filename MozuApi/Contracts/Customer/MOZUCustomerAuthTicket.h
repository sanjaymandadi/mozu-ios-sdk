
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUCustomerAccount.h"



@protocol MOZUCustomerAuthTicket
@end


/**
	Properties of an authentication ticket generated for a customer account.
*/
@interface MOZUCustomerAuthTicket : JSONModel<MOZUCustomerAuthTicket>

/**
The date and time the access token expires.
*/
@property(nonatomic) NSDate * accessTokenExpiration;

/**
Refresh token string used to generate a new access token after expiration for a customer account authentication ticket.
*/
@property(nonatomic) NSString * refreshToken;

/**
The date and time the refresh token expires.
*/
@property(nonatomic) NSDate * refreshTokenExpiration;

/**
User ID associated with the customer account authentication ticket.
*/
@property(nonatomic) NSString * userId;

/**
Access token string that enables authentication for the customer account.
*/
@property(nonatomic) NSString * accessToken;

/**
Properties of the customer account associated with the authentication ticket.
*/
@property(nonatomic) MOZUCustomerAccount *customerAccount;

@end

