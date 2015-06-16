
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

#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypeOptionResource : NSObject


@property(readonly, nonatomic) MOZUDataViewMode dataViewMode;
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;
-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode)dataViewMode;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of option product attributes defined for the specified product type.
@param productTypeId Identifier of the product type.
*/

- (void)optionsWithProductTypeId:(NSInteger)productTypeId completionHandler:(void(^)(NSArray<MOZUAttributeInProductType> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of an option attribute defined for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)optionWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Assigns an option attribute to the product type based on the information supplied in the request.
@param body Properties of an attribute definition associated with a specific product type. When an attribute is applied to a product type, each product of that type maintains the same set of attributes.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addOptionWithBody:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an option attribute definition for the specified product type.
@param body Properties of an attribute definition associated with a specific product type. When an attribute is applied to a product type, each product of that type maintains the same set of attributes.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateOptionWithBody:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes an option attribute definition for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

- (void)deleteOptionWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end