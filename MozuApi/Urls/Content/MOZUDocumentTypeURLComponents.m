/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentTypeURLComponents.h"

@implementation MOZUDocumentTypeURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetDocumentTypesOperationWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex {
	NSString* template = @"/api/content/documenttypes/?pageSize={pageSize}&startIndex={startIndex}";
	NSDictionary* params = @{
		@"pageSize" : pageSize ? pageSize : @"",
		@"startIndex" : startIndex ? startIndex : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetDocumentTypeOperationWithDocumentTypeName:(NSString *)documentTypeName {
	NSString* template = @"/api/content/documenttypes/{documentTypeName}";
	NSDictionary* params = @{
		@"documentTypeName" : documentTypeName,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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