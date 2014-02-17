/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUReferenceDataURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getAddressSchema
@param countryCode The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
+(MOZUURL*)URLForGetAddressSchemaOperationWithCountryCode:(NSString*)countryCode;

/**
Resource Url for getAddressSchemas
*/
+(MOZUURL*)URLForGetAddressSchemasOperation;

/**
Resource Url for getBehavior
@param behaviorId Unique identifier of the behavior.
*/
+(MOZUURL*)URLForGetBehaviorOperationWithBehaviorId:(NSInteger)behaviorId;

/**
Resource Url for getBehaviorCategories
*/
+(MOZUURL*)URLForGetBehaviorCategoriesOperation;

/**
Resource Url for getBehaviorCategory
@param categoryId Unique identifier of the behavior category.
*/
+(MOZUURL*)URLForGetBehaviorCategoryOperationWithCategoryId:(NSInteger)categoryId;

/**
Resource Url for getBehaviors
@param userType The user type associated with the behaviors to retrieve.
*/
+(MOZUURL*)URLForGetBehaviorsOperationWithUserType:(NSString*)userType;

/**
Resource Url for getContentLocales
*/
+(MOZUURL*)URLForGetContentLocalesOperation;

/**
Resource Url for getCountries
*/
+(MOZUURL*)URLForGetCountriesOperation;

/**
Resource Url for getCurrencies
*/
+(MOZUURL*)URLForGetCurrenciesOperation;

/**
Resource Url for getTimeZones
*/
+(MOZUURL*)URLForGetTimeZonesOperation;

/**
Resource Url for getTopLevelDomains
*/
+(MOZUURL*)URLForGetTopLevelDomainsOperation;

/**
Resource Url for getUnitsOfMeasure
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
+(MOZUURL*)URLForGetUnitsOfMeasureOperationWithFilter:(NSString*)filter;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end