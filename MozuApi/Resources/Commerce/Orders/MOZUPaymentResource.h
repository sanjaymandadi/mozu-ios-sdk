
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

#import "MOZUPaymentCollection.h"
#import "MOZUPaymentAction.h"
#import "MOZUOrder.h"
#import "MOZUPayment.h"


@interface MOZUPaymentResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves information about all payment transactions submitted for the specified order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)paymentsWithOrderId:(NSString *)orderId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPaymentCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the list of all available payment actions dependent on the order payment status by specifying the order ID.
@param orderId Unique identifier of the order.
@param paymentId Unique identifier of the payment for which to perform the action.
*/

- (void)availablePaymentActionsWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId completionHandler:(void(^)(NSArray *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves information about a specific payment transaction submitted for the specified order.
@param orderId Unique identifier of the order.
@param paymentId Unique identifier of the payment for which to perform the action.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)paymentWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPayment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Performs the specified action for an individual order payment transaction.
@param body Properties of the payment action performed for an order.
@param orderId Unique identifier of the order.
@param paymentId Unique identifier of the payment for which to perform the action.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)performPaymentActionWithBody:(MOZUPaymentAction *)body orderId:(NSString *)orderId paymentId:(NSString *)paymentId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Creates a new payment transaction for the specified order and performs the specified action.
@param body Properties of the payment action performed for an order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createPaymentActionWithBody:(MOZUPaymentAction *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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