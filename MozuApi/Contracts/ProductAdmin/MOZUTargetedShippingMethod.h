
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



@protocol MOZUTargetedShippingMethod
@end


/**
	Shipping method service type, such as UPS Ground or USPS Priority Mail, targeted for a defined discount.
*/
@interface MOZUTargetedShippingMethod : JSONModel<MOZUTargetedShippingMethod>

/**
The code associated with the carrier's shipping method service type. Service type codes include a prefix that indicates the carrier. For example: FEDEX_INTERNATIONAL_STANDARD
*/
@property(nonatomic) NSString * code;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

@end

