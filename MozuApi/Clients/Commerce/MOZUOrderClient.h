
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
#import "MOZUOrder.h"
#import "MOZUOrderAction.h"
#import "MOZUOrderCollection.h"
#import "MOZUAppliedDiscount.h"
#import "MOZUPricingTaxableOrder.h"


@interface MOZUOrderClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of orders according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. You can filter an order's search results by any of its properties, including status, contact information, or total. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=Status+eq+Submitted"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param q A list of order search terms to use in the query when searching across order number and the name or email of the billing contact. Separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param sortBy 
@param startIndex 
*/

+(MOZUClient*)clientForGetOrdersOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves available order actions which depends on the status of the order. Actions are "CreateOrder," "SubmitOrder," "SetOrderAsProcessing," "CloseOrder," or "CancelOrder."
@param orderId Unique identifier of the available order actions to get.
*/

+(MOZUClient*)clientForGetAvailableActionsOperationWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves an order for the purpose of splitting it into multiple taxable orders in order to fulfill the order in multiple locations.
@param orderId Unique identifier of the order to retrieve.
*/

+(MOZUClient*)clientForGetTaxableOrdersOperationWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of an order specified by the order ID.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order details to get.
*/

+(MOZUClient*)clientForGetOrderOperationWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new order for no-cart quick-ordering scenarios.
@param order All properties of the order to place.
*/

+(MOZUClient*)clientForCreateOrderOperationWithBody:(MOZUOrder*)body userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Creates a new order from an existing cart when the customer chooses to proceed to checkout.
@param cartId Unique identifier of the cart. This is the original cart ID expressed as a GUID.
*/

+(MOZUClient*)clientForCreateOrderFromCartOperationWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Perform the specified action for an order. Available actions depend on the current status of the order. When in doubt, first get a list of available order actions.
@param action Action to perform, which can be "CreateOrder," "SubmitOrder," "SetOrderAsProcessing," "CloseOrder," or "CancelOrder."
@param orderId Unique identifier of the order.
*/

+(MOZUClient*)clientForPerformOrderActionOperationWithBody:(MOZUOrderAction*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the properties of a discount applied to an order.
@param discount Properties of the order discount to update.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param orderId Unique identifier of the order discount. System-supplied and read only.
@param updateMode Specifies whether to modify the discount by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForUpdateOrderDiscountOperationWithBody:(MOZUAppliedDiscount*)body orderId:(NSString*)orderId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Deletes the current draft version of the order, which also deletes any uncommitted changes made to the order in draft mode.
@param orderId Unique identifier of the order associated with the draft to delete.
@param version If applicable, the version of the order draft to delete.
*/

+(MOZUClient*)clientForDeleteOrderDraftOperationWithOrderId:(NSString*)orderId version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Updates the user ID of the shopper who placed the order to the current user.
@param orderId Unique identifier of the order.
*/

+(MOZUClient*)clientForChangeOrderUserIdOperationWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Updates the specified order when additional order information, such as shipping or billing information, is modified during the checkout process.
@param order The properties of the order to update.
@param orderId Unique identifier of the order to update.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForUpdateOrderOperationWithBody:(MOZUOrder*)body orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end