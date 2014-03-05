
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
#import "MOZUAuthTicket.h"
#import "MOZUPickup.h"


@interface MOZUPickupClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the in-store pickup specified in the request.
@param orderId Unique identifier of the order associated with the pickup.
@param pickupId Unique identifier of the pickup to retrieve.
*/

+(MOZUClient*)clientForGetPickupOperationWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a list of the actions available to perform for the pickup specified in the request.
@param orderId Unique identifier of the order associated with the pickup.
@param pickupId Unique identifier of the pickup for which to retrieve available actions.
*/

+(MOZUClient*)clientForGetAvailablePickupFulfillmentActionsOperationWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Create a new pickup for the order specified in the request for in-store fufillment.
@param body Properties of the in-store pickup to create.
@param orderId Unique identifier of the order.
*/

+(MOZUClient*)clientForCreatePickupOperationWithBody:(MOZUPickup*)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more details of a defined in-store pickup.
@param body Properties of the in-store pickup to update.
@param orderId Unique identifier of the order associated with the in-store pickup.
@param pickupId Unique identifier of the pickup to update.
*/

+(MOZUClient*)clientForUpdatePickupOperationWithBody:(MOZUPickup*)body orderId:(NSString *)orderId pickupId:(NSString *)pickupId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a pickup previously defined for order item in-store pickup fulfillment.
@param orderId Unique identifier of the order associated with the pickup.
@param pickupId Unique identifier of the pickup to remove.
*/

+(MOZUClient*)clientForDeletePickupOperationWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId userClaims:(MOZUUserAuthTicket*)userClaims;



@end