/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductOptionURLComponents.h"

@implementation MOZUProductOptionURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetOptionsOperationWithProductCode:(NSString *)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/Options";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetOptionOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForAddOptionOperationWithProductCode:(NSString *)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/Options";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateOptionOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteOptionOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end