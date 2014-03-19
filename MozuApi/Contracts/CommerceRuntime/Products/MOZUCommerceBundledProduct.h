
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
#import "MOZUPackageMeasurements.h"



@protocol MOZUCommerceBundledProduct
@end


/**
	Properties of a component product in a product bundle. A product bundle can represent either a collection of multiple products sold as a single entity, or a collection of the same product sold as a package. For example, a 10-pack of socks.
*/
@interface MOZUCommerceBundledProduct : JSONModel<MOZUCommerceBundledProduct>

/**
The quantity of a component product in its product bundle. System-supplied and read only.
*/
@property(nonatomic) NSInteger quantity;

/**
The description defined for a component product in a product bundle. System-supplied and read only.
*/
@property(nonatomic) NSString * description;

/**
If true, this product cannot be shipped in a package with other items and must ship in a package by itself.
*/
@property(nonatomic) BOOL isPackagedStandAlone;

/**
The name of a component product in a product bundle. System-supplied and read only.
*/
@property(nonatomic) NSString * name;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString * productCode;

/**
Unique identifier of the product reservation associated with the component product in a product bundle. System-supplied and read only.
*/
@property(nonatomic) NSNumber * productReservationId;

/**
Dimensions of the packaged product.
*/
@property(nonatomic) MOZUPackageMeasurements* measurements;

@end

