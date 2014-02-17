
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReferenceDataClient.h"
#import "MOZUReferenceDataUrl.h"
#import "MozuTopLevelDomainCollection.h"
#import "MozuContentLocaleCollection.h"
#import "MozuBehaviorCollection.h"
#import "MozuCountryCollection.h"
#import "MozuTimeZoneCollection.h"
#import "MozuBehaviorCategoryCollection.h"
#import "MozuBehaviorCategory.h"
#import "MozuCurrencyCollection.h"
#import "MozuAddressSchemaCollection.h"
#import "MozuBehavior.h"
#import "MozuUnitOfMeasureCollection.h"
#import "MozuAddressSchema.h"


@implementation MOZUReferenceDataClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAddressSchemaOperationWithWithCountryCode:(NSString*)countryCode {
	id url = [MOZUReferenceDataURL URLForGetAddressSchemaOperationWithCountryCode:countryCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAddressSchema alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAddressSchemasOperation {
	id url = [MOZUReferenceDataURL URLForGetAddressSchemasOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAddressSchemaCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetBehaviorOperationWithWithBehaviorId:(NSInteger)behaviorId {
	id url = [MOZUReferenceDataURL URLForGetBehaviorOperationWithBehaviorId:behaviorId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUBehavior alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetBehaviorCategoriesOperation {
	id url = [MOZUReferenceDataURL URLForGetBehaviorCategoriesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUBehaviorCategoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetBehaviorCategoryOperationWithWithCategoryId:(NSInteger)categoryId {
	id url = [MOZUReferenceDataURL URLForGetBehaviorCategoryOperationWithCategoryId:categoryId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUBehaviorCategory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetBehaviorsOperationWithWithUserType:(NSString*)userType {
	id url = [MOZUReferenceDataURL URLForGetBehaviorsOperationWithUserType:userType];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUBehaviorCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetContentLocalesOperation {
	id url = [MOZUReferenceDataURL URLForGetContentLocalesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUContentLocaleCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCountriesOperation {
	id url = [MOZUReferenceDataURL URLForGetCountriesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCountryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCurrenciesOperation {
	id url = [MOZUReferenceDataURL URLForGetCurrenciesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCurrencyCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetTimeZonesOperation {
	id url = [MOZUReferenceDataURL URLForGetTimeZonesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTimeZoneCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetTopLevelDomainsOperation {
	id url = [MOZUReferenceDataURL URLForGetTopLevelDomainsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTopLevelDomainCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetUnitsOfMeasureOperationWithWithFilter:(NSString*)filter {
	id url = [MOZUReferenceDataURL URLForGetUnitsOfMeasureOperationWithFilter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUUnitOfMeasureCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


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