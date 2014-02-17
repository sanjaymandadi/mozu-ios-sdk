
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
#import "MOZURuntimeAppliedDiscount.h"



@protocol MOZURuntimeProductPrice
@end


/**
	The price of the product in the specified currency code (USD). This price can either be the sale price or the price for which the merchant intends to sell the product.
*/
@interface MOZURuntimeProductPrice : JSONModel<MOZURuntimeProductPrice>

/**
The price the merchant intends to charge for the product.
*/
@property(nonatomic) NSDecimalNumber* price;

/**
The sale price defined for the product.
*/
@property(nonatomic) NSDecimalNumber* salePrice;

/**
The discount applied to the product price.
*/
@property(nonatomic) MOZURuntimeAppliedDiscount* discount;

@end

