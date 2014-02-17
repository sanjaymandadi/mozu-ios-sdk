
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
#import "MOZUAuditInfo.h"
#import "MOZUAttributeInProductType.h"



@protocol MOZUProductType
@end


/**
	A product type is like a product template.
*/
@interface MOZUProductType : JSONModel<MOZUProductType>

/**
Unique identifier of the product type.
*/
@property(nonatomic) NSNumber* id;

/**
If true, this product is associated with the overall product type. There is only one BaseProductType per site group. System-supplied and read-only.
*/
@property(nonatomic) BOOL isBaseProductType;

/**
The unique identifier of the master catalog associated with the entity.
*/
@property(nonatomic) NSNumber* masterCatalogId;

/**
Name of the product type, such as "Shoes" or "TVs."
*/
@property(nonatomic) NSString* name;

/**
The number of products associated with this product type.
*/
@property(nonatomic) NSNumber* productCount;

/**
List of product usages that describe how products of this type are used. Products of this type can be Standard (a single product without configurable options), Configurable (a product that includes configurable option attributes), Bundle (a collection of products sold as a single entity), or Component (an invididual product that represents a component in a bundle). Product type usages cannot be both Bundle and Configurable.
*/
@property(nonatomic) NSArray* productUsages;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

/**
The list of product type attributes which exist as extras. Example: monogram
*/
@property(nonatomic) NSArray<MOZUAttributeInProductType>* extras;

/**
The list of product type attributes which exist as options.
*/
@property(nonatomic) NSArray<MOZUAttributeInProductType>* options;

/**
The list of product type attributes which exist as properties, such as color.
*/
@property(nonatomic) NSArray<MOZUAttributeInProductType>* properties;

@end
