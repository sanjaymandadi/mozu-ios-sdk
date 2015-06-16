
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



@protocol MOZUVariationOption
@end


/**
	Mozu.ProductRuntime.Contracts.VariationOption ApiType DOCUMENT_HERE 
*/
@interface MOZUVariationOption : JSONModel<MOZUVariationOption>

/**
The fully qualified name of the attribute. The attributeDefiniteId may be used to generate this name.
*/
@property(nonatomic) NSString * attributeFQN;

/**
The value of a property, used by numerous objects within Mozu including facets, attributes, products, localized content, metadata, capabilities (Mozu and third-party), location inventory adjustment, and more. The value may be a string, integer, or double. Validation may be run against the entered and saved values depending on the object type.
*/
@property(nonatomic) NSObject * value;

/**
Mozu.ProductRuntime.Contracts.VariationOption valueSequence ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger valueSequence;

@end

