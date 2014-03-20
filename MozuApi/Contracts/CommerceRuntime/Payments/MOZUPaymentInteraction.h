
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
#import "MOZUAuditInfo.h"



@protocol MOZUPaymentInteraction
@end


/**
	Properties of a resulting payment interaction that occurs when a payment action is performed.
*/
@interface MOZUPaymentInteraction : JSONModel<MOZUPaymentInteraction>

/**
If applicable, the total monetary amount associated with this payment interaction.
*/
@property(nonatomic) NSNumber * amount;

/**
If applicable, the check number associated with this payment interaction.
*/
@property(nonatomic) NSString * checkNumber;

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString * currencyCode;

/**
If required by the payment gateway, the authorization code of the transaction.
*/
@property(nonatomic) NSString * gatewayAuthCode;

/**
AVS codes supplied by the payment gateway.
*/
@property(nonatomic) NSString * gatewayAVSCodes;

/**
CVV2 codes supplied by the payment gateway.
*/
@property(nonatomic) NSString * gatewayCVV2Codes;

/**
Unique identifier of the gateway interaction. Used for credit card transactions where the payment creates a GatewayInteractionId for each interaction. System-supplied and read-only.
*/
@property(nonatomic) NSNumber * gatewayInteractionId;

/**
Response code from the gateway associated with the payment interaction. For example, if the gateway returns "Not Authorized," an interaction for voiding the payment transaction would result.
*/
@property(nonatomic) NSString * gatewayResponseCode;

/**
Unique identifier of the gateway transaction associated with the payment interaction.
*/
@property(nonatomic) NSString * gatewayTransactionId;

/**
Unique identifier of the payment interaction.
*/
@property(nonatomic) NSString * id;

/**
Date and time the payment interaction occured.
*/
@property(nonatomic) NSDate * interactionDate;

/**
The type of payment interaction, such as Capture or CheckReceived.
*/
@property(nonatomic) NSString * interactionType;

/**
If true, the payment interaction was manually defined s part of offline order processing.
*/
@property(nonatomic) BOOL isManual;

/**
If true, this payment interaction repeats on a scheduled interval.
*/
@property(nonatomic) NSNumber * isRecurring;

/**
Note content entered for a payment interaction.
*/
@property(nonatomic) NSString * note;

/**
Unique identifier of the order associated with this payment interaction.
*/
@property(nonatomic) NSString * orderId;

/**
The status of the payment prior to the interaction being performed, which enables manual rollback of previous transactions.
*/
@property(nonatomic) NSString * paymentEntryStatus;

/**
Unique identifier of the payment associated with this transaction.
*/
@property(nonatomic) NSString * paymentId;

/**
Unique identifier of previous interaction that this payment interaction is modifying. For example, when refunding a payment, the crediting interaction would reference the capture interaction.
*/
@property(nonatomic) NSNumber * paymentTransactionInteractionIdReference;

/**
The status of this payment interaction. Possible values are New, Authorized, Captured, Declined, Failed, Voided, Credited, CheckRequested, or RolledBack.
*/
@property(nonatomic) NSString * status;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

