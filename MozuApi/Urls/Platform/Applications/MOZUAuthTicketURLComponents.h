/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUAuthTicketURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for authenticateApp
*/
+ (MOZUURLComponents *)URLComponentsForAuthenticateAppOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for refreshAppAuthTicket
*/
+ (MOZUURLComponents *)URLComponentsForRefreshAppAuthTicketOperation;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteAppAuthTicket
@param refreshToken The refresh token string from the application's authentication ticket.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteAppAuthTicketOperationWithRefreshToken:(NSString *)refreshToken;



@end