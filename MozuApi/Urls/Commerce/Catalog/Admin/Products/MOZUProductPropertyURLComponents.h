/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductPropertyURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getProperties
@param productCode 
*/
+(MOZUURLComponents*)URLComponentsForGetPropertiesOperationWithProductCode:(NSString*)productCode;

/**
Resource Url Components for getProperty
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURLComponents*)URLComponentsForGetPropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addProperty
@param productCode 
*/
+(MOZUURLComponents*)URLComponentsForAddPropertyOperationWithProductCode:(NSString*)productCode;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateProperty
@param productCode 
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURLComponents*)URLComponentsForUpdatePropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteProperty
@param productCode 
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURLComponents*)URLComponentsForDeletePropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;



@end