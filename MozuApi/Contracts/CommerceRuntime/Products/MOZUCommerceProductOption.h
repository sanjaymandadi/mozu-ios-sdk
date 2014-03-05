
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



@protocol MOZUCommerceProductOption
@end


/**
	An option attribute configured for a product on a storefront.
*/
@interface MOZUCommerceProductOption : JSONModel<MOZUCommerceProductOption>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString * attributeFQN;

/**
The data type, such as bool or string, used in this option attribute.
*/
@property(nonatomic) NSString * dataType;

/**
The name of the product option attribute in the language of the locale code specified for the storefront.
*/
@property(nonatomic) NSString * name;

/**
The value a shopper entered for an option attribute that requires additional input for the product on a storefront.
*/
@property(nonatomic) NSObject * shopperEnteredValue;

/**
If the value is a string, the string entered for the value.
*/
@property(nonatomic) NSString * stringValue;

/**
If the value if an object, the value selected.
*/
@property(nonatomic) NSObject * value;

@end

