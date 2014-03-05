
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
#import "MOZUPaymentGatewayInteraction.h"
#import "MOZUBillingInfo.h"



@protocol MOZUPaymentAction
@end


/**
	Properties of the payment action performed for an order.
*/
@interface MOZUPaymentAction : JSONModel<MOZUPaymentAction>

/**
The name of the payment action, such as "AuthorizeAndCapture".
*/
@property(nonatomic) NSString * actionName;

/**
The total monetary amount of the payment transaction.
*/
@property(nonatomic) NSNumber * amount;

/**
The URL provided to cancel payments submitted using PayPal Express or another non-gateway payment provider.
*/
@property(nonatomic) NSString * cancelUrl;

/**
If applicable, the check number associated with the payment action.
*/
@property(nonatomic) NSString * checkNumber;

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString * currencyCode;

/**
Date and time the payment gateway interaction was performed.
*/
@property(nonatomic) NSDate * interactionDate;

/**
Unique ID that references an original transaction in the event of a credit back.
*/
@property(nonatomic) NSString * referenceSourcePaymentId;

/**
The URL provided to redirect users who submit payments using PayPal Express or another non-gateway payment provider.
*/
@property(nonatomic) NSString * returnUrl;

/**
Properties of a manually performed interaction with the payment gateway.
*/
@property(nonatomic) MOZUPaymentGatewayInteraction* manualGatewayInteraction;

/**
The billing information associated with this payment action.
*/
@property(nonatomic) MOZUBillingInfo* theNewBillingInfo;

@end

