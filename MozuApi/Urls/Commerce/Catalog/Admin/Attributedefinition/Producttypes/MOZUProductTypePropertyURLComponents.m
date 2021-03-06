/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypePropertyURLComponents.h"

@implementation MOZUProductTypePropertyURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetPropertiesOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Properties";
	NSDictionary *params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetPropertyOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Properties/{attributeFQN}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddPropertyOperationWithProductTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Properties?responseFields={responseFields}";
	NSDictionary *params = @{
		@"productTypeId" : @(productTypeId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdatePropertyOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Properties/{attributeFQN}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeletePropertyOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Properties/{attributeFQN}";
	NSDictionary *params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end