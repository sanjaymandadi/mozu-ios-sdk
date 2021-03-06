
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
#import "MOZUCommerceProductPropertyValue.h"



@protocol MOZUCommerceProductProperty
@end


/**
	Details of a property attribute defined for a product.
*/
@interface MOZUCommerceProductProperty : JSONModel<MOZUCommerceProductProperty>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString * attributeFQN;

/**
The data type of the source product property, typically of type Bool, DateTime, Number, or String.
*/
@property(nonatomic) NSString * dataType;

/**
Indicates if the object has or can have multiple properties or values. If true, the object can have more than one value, selectable by shoppers through the storefront or configurable through the catalogs. 
*/
@property(nonatomic) BOOL isMultiValue;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
List of value data for objects.
*/
@property(nonatomic) NSArray<MOZUCommerceProductPropertyValue> *values;

@end

