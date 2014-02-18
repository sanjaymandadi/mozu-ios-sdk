/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUAdminFacetURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getFacet
@param facetId Unique identifier of the facet to retrieve.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/
+(MOZUURL*)URLForGetFacetOperationWithFacetId:(NSInteger)facetId validate:(NSNumber*)validate;

/**
Resource Url for getFacetCategoryList
@param categoryId Unique identifier of the category associated with the facets to retrieve.
@param includeAvailable If true, returns a list of the attributes and categories associated with a product type that have not been defined as a facet for the category.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/
+(MOZUURL*)URLForGetFacetCategoryListOperationWithCategoryId:(NSInteger)categoryId includeAvailable:(NSNumber*)includeAvailable validate:(NSNumber*)validate;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url for addFacet
*/
+(MOZUURL*)URLForAddFacetOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateFacet
@param facetId Unique identifier of the facet to modify.
*/
+(MOZUURL*)URLForUpdateFacetOperationWithFacetId:(NSInteger)facetId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url for deleteFacetById
@param facetId Unique identifier of the facet to delete.
*/
+(MOZUURL*)URLForDeleteFacetByIdOperationWithFacetId:(NSInteger)facetId;



@end