
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
#import "MOZUPricingProductProperty.h"



@protocol MOZUTaxableLineItem
@end


/**
	Properties of a line item in an order that is subject to tax.
*/
@interface MOZUTaxableLineItem : JSONModel<MOZUTaxableLineItem>

/**
Unique identifier of the taxable line item.
*/
@property(nonatomic) NSString* id;

/**
If true, the line item in the order is subject to tax.
*/
@property(nonatomic) NSNumber* isTaxable;

/**
The sale price of the line item in the order.
*/
@property(nonatomic) NSDecimalNumber* lineItemPrice;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
The name of the product that represents a line item in a taxable order.
*/
@property(nonatomic) NSString* productName;

/**
The quantity of the line item in the order.
*/
@property(nonatomic) NSInteger quantity;

/**
The reason the item is either taxed or returned.
*/
@property(nonatomic) NSString* reason;

/**
The amount of shipping calculated for a line item in an order.
*/
@property(nonatomic) NSDecimalNumber* shippingAmount;

/**
Properties of the product that represents the line item in the order.
*/
@property(nonatomic) NSArray<MOZUPricingProductProperty>* productProperties;

@end

