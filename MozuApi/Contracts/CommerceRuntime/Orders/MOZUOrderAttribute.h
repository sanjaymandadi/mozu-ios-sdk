
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



@protocol MOZUOrderAttribute
@end


/**
	Properties of an attribute applied to an order.
*/
@interface MOZUOrderAttribute : JSONModel<MOZUOrderAttribute>

/**
Unique identifier of the order attribute definition.
*/
@property(nonatomic) NSNumber * attributeDefinitionId;

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString * fullyQualifiedName;

/**
The values defined for the order attribute.
*/
@property(nonatomic) NSArray *values;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

