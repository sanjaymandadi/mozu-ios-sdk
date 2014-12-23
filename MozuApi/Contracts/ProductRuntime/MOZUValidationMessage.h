
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



@protocol MOZUValidationMessage
@end


/**
	Properties of a message displayed when a product validation failure occurs for a shopper in a storefront.
*/
@interface MOZUValidationMessage : JSONModel<MOZUValidationMessage>

/**
Unique identifier of the entity that triggered the validation.
*/
@property(nonatomic) NSString * sourceId;

/**
The contents of the message displayed to the user when the product validation failure occurs.
*/
@property(nonatomic) NSString * message;

/**
The severity level of the product validation failure.
*/
@property(nonatomic) NSString * severity;

/**
The entity that triggered the product validation.
*/
@property(nonatomic) NSString * source;

@property(nonatomic) NSString * validationType;

@end

