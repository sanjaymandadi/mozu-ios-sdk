
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
#import "MOZUCartChangeMessageCollection.h"


@interface MOZUChangeMessageResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the messages associated with the current shopper's cart.
*/

-(void)messagesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartChangeMessageCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes all messages associated with the cart of the current shopper.
*/

-(void)removeAllMessagesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Removes a single message associated with the cart of the current shopper.
@param messageId Identifier of the message to remove from the cart.
*/

-(void)removeMessageWithMessageId:(NSString*)messageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end