
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
#import "MOZUCustomAttribute.h"



@protocol MOZUCustomAttribute
@end


/**
	Properties of a custom attribute used to integrate with a shipping provider, which consists of an array of necessary key-value pairs.
*/
@interface MOZUCustomAttribute : JSONModel<MOZUCustomAttribute>

/**
Key required for a custom attribute associated with a shipping provider integration, as part of a key-value pair.
*/
@property(nonatomic) NSString * key;

/**
Value for a custom attribute associated with a shipping provider integration, as part of a key-value pair.
*/
@property(nonatomic) NSString * value;

/**
Collection of child attributes associated with a shipping provider integration.
*/
@property(nonatomic) NSArray<MOZUCustomAttribute>* childAttributes;

@end
