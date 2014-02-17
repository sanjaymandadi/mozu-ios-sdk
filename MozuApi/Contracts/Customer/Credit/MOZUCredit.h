
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



@protocol MOZUCredit
@end


/**
	Properties of the store credit of gift card applied to a customer account. At this time, gift card functionality is reserved for future use.
*/
@interface MOZUCredit : JSONModel<MOZUCredit>

/**
The date and time the store credit or gift card was activated by the shopper. Credits cannot be used until activated. After the credit is activated, this property value is read-only.
*/
@property(nonatomic) NSDate* activationDate;

/**
User-defined identifier of the credit, which is unique within the tenant.
*/
@property(nonatomic) NSString* code;

/**
The type of customer credit, which is "GiftCard" or "StoreCredit".
*/
@property(nonatomic) NSString* creditType;

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString* currencyCode;

/**
The current remaining balance of the credit applied to the customer account.
*/
@property(nonatomic) NSDecimalNumber* currentBalance;

/**
Unique identifier of the shopper associated with the applied credit. For gift cards, this property is not required.
*/
@property(nonatomic) NSNumber* customerId;

/**
The date and time the credit expires and can no longer be redeemed.
*/
@property(nonatomic) NSDate* expirationDate;

/**
The initial balance of the credit applied to the customer account. This value cannot be changed after it is set.
*/
@property(nonatomic) NSDecimalNumber* initialBalance;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

@end
