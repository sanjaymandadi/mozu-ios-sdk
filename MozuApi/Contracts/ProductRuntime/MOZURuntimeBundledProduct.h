
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
#import "MOZUProductContent.h"
#import "MOZURuntimePackageMeasurements.h"



@protocol MOZURuntimeBundledProduct
@end


/**
	Properties of a component product in a product bundle. A product bundle can represent either a collection of multiple products sold as a single entity, or a collection of the same product sold as a package. For example, a 10-pack of socks.
*/
@interface MOZURuntimeBundledProduct : JSONModel<MOZURuntimeBundledProduct>

/**
If true, the component product of the bundle should not ship in a package with the rest of the product bundle, and should ship in a package by itself. System-supplied and read only.
*/
@property(nonatomic) NSNumber* isPackagedStandAlone;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
The quantity of the component product in the product bundle. System-supplied and read only.
*/
@property(nonatomic) NSInteger quantity;

/**
Localizable product content defined for the product bundle. System-supplied and read only.
*/
@property(nonatomic) MOZUProductContent* content;

/**
Dimensions of the packaged product.
*/
@property(nonatomic) MOZURuntimePackageMeasurements* measurements;

@end

