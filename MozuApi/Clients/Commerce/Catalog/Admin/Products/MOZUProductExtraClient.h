
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
#import "MOZUAuthTicket.h"
#import "MOZUProductExtra.h"


@interface MOZUProductExtraClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of extras configured for the product according to any defined filter and sort criteria.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForGetExtrasOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of an extra attribute configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForGetExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Configure an extra attribute for the product specified in the request.
@param body Properties of the product extra to configure for the specified product.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForAddExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the configuration of an extra attribute for the product specified in the request.
@param body Properties of the extra attribute to update for the specified product.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForUpdateExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Delete a product extra configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForDeleteExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;



@end