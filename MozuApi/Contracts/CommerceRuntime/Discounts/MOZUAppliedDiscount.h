
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
#import "MOZUDiscount.h"



@protocol MOZUAppliedDiscount
@end


/**
	The discount currently applied to the cart or order, represented as a negative currency amount to be subtracted from the final price. If multiple discounts are applied to the same order, the Applied Discount displays the most valuable discount for the shopper.
*/
@interface MOZUAppliedDiscount : JSONModel<MOZUAppliedDiscount>

/**
Alphanumeric code associated with the coupon or promotion that results in a discounted price.
*/
@property(nonatomic) NSString* couponCode;

/**
If true, the system ignores this discount when pricing the order.
*/
@property(nonatomic) NSNumber* excluded;

/**
The value of the discount applied to the cart or order, represented as a negative currency amount to apply to the original price.
*/
@property(nonatomic) NSDecimalNumber* impact;

/**
Discount currently applied to the cart or order.
*/
@property(nonatomic) MOZUCommerceDiscount* discount;

@end
