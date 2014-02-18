
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
#import "MOZUPublishingScope.h"


@interface MOZUPublishingScopeResource : NSObject
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
Deletes the draft version of product changes for each product code specified in the request.
@param publishScope Properties of the pending product changes to include in this operation.
*/

-(void)discardDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode publishScope:(MOZUPublishScope*)publishScope userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Publishes the draft version of product changes for each product code specified in the request, and changes the product publish state to "live".
@param publishScope Properties of the pending product changes to include in this operation.
*/

-(void)publishDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode publishScope:(MOZUPublishScope*)publishScope userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;


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



@end