
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
#import "MOZURuntimePackageMeasurements.h"



@protocol MOZUBundledProductSummary
@end


/**
	System-supplied and read only information for component products in a product bundle.
*/
@interface MOZUBundledProductSummary : JSONModel<MOZUBundledProductSummary>

/**
If true, the component product of the bundle should not ship in a package with the rest of the product bundle, and should ship in a package by itself. System-supplied and read only.
*/
@property(nonatomic) NSNumber * isPackagedStandAlone;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString * productCode;

/**
The read-only name of the component in the bundled product.
*/
@property(nonatomic) NSString * productName;

/**
The short description defined for the component in a bundled product. System-supplied and read only.
*/
@property(nonatomic) NSString * productShortDescription;

/**
The quantity of a component product in its product bundle.
*/
@property(nonatomic) NSInteger quantity;

/**
Dimensions of the packaged product.
*/
@property(nonatomic) MOZURuntimePackageMeasurements *measurements;

@end

