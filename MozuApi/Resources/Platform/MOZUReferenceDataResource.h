
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

#import "MOZUTopLevelDomainCollection.h"
#import "MOZUContentLocaleCollection.h"
#import "MOZUBehaviorCollection.h"
#import "MOZUCountryCollection.h"
#import "MOZUTimeZoneCollection.h"
#import "MOZUBehaviorCategoryCollection.h"
#import "MOZUBehaviorCategory.h"
#import "MOZUCurrencyCollection.h"
#import "MOZUAddressSchemaCollection.h"
#import "MOZUBehavior.h"
#import "MOZUUnitOfMeasureCollection.h"
#import "MOZUAddressSchema.h"


@interface MOZUReferenceDataResource : NSObject


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a specific address schema based on the country code provided. This operation allows the creation of custom shipping and billing address fields.
@param countryCode The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/

-(void)addressSchemaWithCountryCode:(NSString *)countryCode completionHandler:(void(^)(MOZUAddressSchema* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the entire list of address schemas that the system supports.
*/

-(void)addressSchemasWithCompletionHandler:(void(^)(MOZUAddressSchemaCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of a behavior based on the behavior ID specified in the request.
@param behaviorId Unique identifier of the behavior.
*/

-(void)behaviorWithBehaviorId:(NSInteger)behaviorId completionHandler:(void(^)(MOZUBehavior* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the list of behavior categories.
*/

-(void)behaviorCategoriesWithCompletionHandler:(void(^)(MOZUBehaviorCategoryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of the behavior category specified in the request.
@param categoryId Unique identifier of the behavior category.
*/

-(void)behaviorCategoryWithCategoryId:(NSInteger)categoryId completionHandler:(void(^)(MOZUBehaviorCategory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a list of application behaviors.
@param userType The user type associated with the behaviors to retrieve.
*/

-(void)behaviorsWithUserType:(NSString *)userType completionHandler:(void(^)(MOZUBehaviorCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the list of content locales the system supports. Content locales indicate the language used and the country where the language is used.
*/

-(void)contentLocalesWithCompletionHandler:(void(^)(MOZUContentLocaleCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the entire list of countries that the system supports.
*/

-(void)countriesWithCompletionHandler:(void(^)(MOZUCountryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the entire list of currencies that the system supports.
*/

-(void)currenciesWithCompletionHandler:(void(^)(MOZUCurrencyCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the entire list of time zones that the system supports.
*/

-(void)timeZonesWithCompletionHandler:(void(^)(MOZUTimeZoneCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the entire list of top-level internet domains that the system supports.
*/

-(void)topLevelDomainsWithCompletionHandler:(void(^)(MOZUTopLevelDomainCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves an array list of all units of measure the system supports.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/

-(void)unitsOfMeasureWithFilter:(NSString *)filter completionHandler:(void(^)(MOZUUnitOfMeasureCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end