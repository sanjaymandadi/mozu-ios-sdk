
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



@protocol MOZURuntimeDiscount
@end


/**
	Name of the discount added and applied to a shopping cart and order for a shopper's purchase. 
*/
@interface MOZURuntimeDiscount : JSONModel<MOZURuntimeDiscount>

/**
Unique identifier for the discount in the storefront.
*/
@property(nonatomic) NSInteger discountId;

/**
Date and time in UTC format when a discount, credit, wish list, or cart expires. An expired discount no longer can be redeemed. An expired wish list is no longer available. An expired credit can no longer be redeemed for a purchase. Acart becomes inactive and expired based on a system-calculated interval. For example, if an anonymous shopper has 14 days of inactivity, the cart is considered abandoned after that period of inactivity. System-supplied and read-only.
*/
@property(nonatomic) NSDate * expirationDate;

/**
The localizable, shopper-facing description defined for a discount or a storefront message. 
*/
@property(nonatomic) NSString * friendlyDescription;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

@end

