
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
#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypeExtraResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of extra attributes defined for the specified product type.
@param productTypeId Identifier of the product type.
*/

-(void)extrasWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeInProductType>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of an extra attribute definition for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose extra is being retrieved.
*/

-(void)extraWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Assigns a defined extra attribute to the product type based on the information supplied in the request.
@param body The properties of the extra attribute definition for this product type assignment.
@param productTypeId Identifier of the product type.
*/

-(void)addExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType*)body productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the definition of an extra attribute for the specified product type.
@param body The properties of the extra attribute definition to update for the product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

-(void)updateExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType*)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes an extra attribute definition from the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

-(void)deleteExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end