/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentURLComponents.h"

@implementation MOZUDocumentURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetDocumentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetDocumentContentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetDocumentsOperationWithDocumentListName:(NSString *)documentListName filter:(NSString *)filter sortBy:(NSString *)sortBy pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents?filter={filter}&sortBy={sortBy}&pageSize={pageSize}&startIndex={startIndex}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"filter" : filter ? filter : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"startIndex" : startIndex ? startIndex : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForCreateDocumentOperationWithDocumentListName:(NSString *)documentListName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateDocumentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForUpdateDocumentContentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteDocumentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForDeleteDocumentContentOperationWithDocumentListName:(NSString *)documentListName documentId:(NSString *)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end