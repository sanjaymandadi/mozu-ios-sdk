
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
#import "MOZUShippingRateLocalizedContent.h"
#import "MOZUCustomAttribute.h"
#import "MOZUShippingRateValidationMessage.h"
#import "MOZUShippingItemRate.h"



@protocol MOZUShippingRate
@end


/**
	Properties of a shipping rate calculated for a specified carrier.
*/
@interface MOZUShippingRate : JSONModel<MOZUShippingRate>

/**
The total calculated shipping amount requested for the package or shipment.
*/
@property(nonatomic) NSNumber * amount;

/**
The carrier-defined alphanumeric code associated with this shipping rate.
*/
@property(nonatomic) NSString * code;

/**
The number of days the shipment will spend between the origin address and the destination address.
*/
@property(nonatomic) NSNumber * daysInTransit;

/**
Localizable content (such as a name and/or description) for an attribute. The content may be localized when displayed according to the locale code specified by the master catalog. Content can include descriptive text for product extensible attributes, catalog-level descriptions (displayed if isContentOverriden is true), product bundles, and customer account notes.
*/
@property(nonatomic) MOZUShippingRateLocalizedContent *content;

/**
Collection of carrier-specific key-value attribute pairs associated with a shipping carrier. These are required to retrieve a shipping rate request and are returned for the generated shipping label.
*/
@property(nonatomic) NSArray<MOZUCustomAttribute> *customAttributes;

/**
Mozu.ShippingRuntime.Contracts.ShippingRate data ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSObject * data;

/**
Array list of validation and status messages associated with shipping rates, orders, and product purchasable state.
*/
@property(nonatomic) NSArray<MOZUShippingRateValidationMessage> *messages;

/**
Properties of a calculated shipping rate for individual line items in a shipment.
*/
@property(nonatomic) NSArray<MOZUShippingItemRate> *shippingItemRates;

@end

