
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUAdminProductProperty.h"


@interface MOZUProductPropertyResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the property attributes configured for the product specified in the request.
@param productCode 
*/

-(void)propertiesWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAdminProductProperty>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of a property attribute configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)propertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductProperty* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Configures a property attribute for the product specified in the request.
@param productProperty Properties of the property attribute to configure for a product.
@param productCode 
*/

-(void)addPropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productProperty:(MOZUProductProperty*)productProperty productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductProperty* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update one or more details of a property attribute configuration for the product specified in the request.
@param productProperty Details of the property attribute to update for the product configuration.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
*/

-(void)updatePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productProperty:(MOZUProductProperty*)productProperty productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductProperty* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the configuration of a property attribute for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
*/

-(void)deletePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end