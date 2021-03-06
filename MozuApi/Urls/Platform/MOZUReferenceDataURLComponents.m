/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReferenceDataURLComponents.h"

@implementation MOZUReferenceDataURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetAddressSchemaOperationWithCountryCode:(NSString *)countryCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/addressschema/{countryCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"countryCode" : countryCode ? countryCode : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAddressSchemasOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/addressschemas?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetBehaviorOperationWithBehaviorId:(NSInteger)behaviorId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/behaviors/{behaviorId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"behaviorId" : @(behaviorId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoryOperationWithCategoryId:(NSInteger)categoryId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/behaviors/categories/{categoryId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"categoryId" : @(categoryId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoriesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/behaviors/categories?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetBehaviorsOperationWithUserType:(NSString *)userType responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/behaviors?userType={userType}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"userType" : userType ? userType : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetContentLocalesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/contentLocales?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetCountriesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/countries?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetCountriesWithStatesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/countrieswithstates?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetCurrenciesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/currencies?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetTimeZonesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/timezones?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetTopLevelDomainsOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/topleveldomains?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetUnitsOfMeasureOperationWithFilter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/reference/unitsofmeasure?filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
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