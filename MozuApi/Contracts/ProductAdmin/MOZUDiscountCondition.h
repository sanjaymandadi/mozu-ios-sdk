
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
#import "MOZUAdminCustomerGroup.h"
#import "MOZUCategoryDiscountCondition.h"
#import "MOZUProductDiscountCondition.h"



@protocol MOZUDiscountCondition
@end


/**
	Properties of the conditions that must be met for a discount to apply to an order.
*/
@interface MOZUDiscountCondition : JSONModel<MOZUDiscountCondition>

/**
If the discount is a coupon, the code required to redeem the coupon.
*/
@property(nonatomic) NSString * couponCode;

/**
The date and time on which the discount expires and cannot be redeemed.
*/
@property(nonatomic) NSDate * expirationDate;

/**
The maximum number of times the discount can be redeemed.
*/
@property(nonatomic) NSNumber * maxRedemptionCount;

/**
The minimum customer lifetime value amount required to redeem this discount.
*/
@property(nonatomic) NSNumber * minimumLifetimeValueAmount;

/**
The minimum order amount required to redeem this discount.
*/
@property(nonatomic) NSNumber * minimumOrderAmount;

/**
If true, redemption of this discount requires entry of a coupon code.
*/
@property(nonatomic) BOOL requiresCoupon;

/**
The earliest date and time this discount can be redeemed.
*/
@property(nonatomic) NSDate * startDate;

/**
List of the customer groups associated with a discount.
*/
@property(nonatomic) NSArray<MOZUAdminCustomerGroup>* customerGroups;

/**
List of the product categories that are not eligible for the discount.
*/
@property(nonatomic) NSArray<MOZUCategoryDiscountCondition>* excludedCategories;

/**
List of the products that are not eligible for the discount.
*/
@property(nonatomic) NSArray<MOZUProductDiscountCondition>* excludedProducts;

/**
List of product categories that are eligible for the discount.
*/
@property(nonatomic) NSArray<MOZUCategoryDiscountCondition>* includedCategories;

/**
List of products that are eligible for the discount.
*/
@property(nonatomic) NSArray<MOZUProductDiscountCondition>* includedProducts;

@end

