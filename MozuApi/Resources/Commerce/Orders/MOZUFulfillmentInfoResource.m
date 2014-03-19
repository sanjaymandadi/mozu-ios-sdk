
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUFulfillmentInfoClient.h"
#import "MOZUFulfillmentInfoResource.h"



@interface MOZUFulfillmentInfoResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUFulfillmentInfoResource


-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the fulfillment information for the specified order.
@param draft If true, retrieve the draft version of the order's fulfillment information, which might include uncommitted changes.
@param orderId Unique identifier of the order.
*/

-(void)fulfillmentInfoWithOrderId:(NSString *)orderId draft:(NSNumber *)draft userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUFulfillmentInfo* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUFulfillmentInfoClient clientForGetFulfillmentInfoOperationWithOrderId:orderId draft:draft userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


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

/**
Updates one or more properties of fulfillment information for the specified order.
@param body Array list of fulfillment information associated with an order.
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to set the fulfillment information by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)setFulFillmentInfoWithBody:(MOZUFulfillmentInfo*)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUFulfillmentInfo* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUFulfillmentInfoClient clientForSetFulFillmentInfoOperationWithBody:body orderId:orderId updateMode:updateMode version:version userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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



@end