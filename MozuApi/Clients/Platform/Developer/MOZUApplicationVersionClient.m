
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUApplicationVersionClient.h"
#import "MOZUApplicationVersionURLComponents.h"
#import "MozuFileMetadata.h"
#import "MozuAppDevApplication.h"
#import "MozuPackageCollection.h"
#import "MozuApplicationVersion.h"
#import "MozuFolderMetadata.h"
#import "MozuAppDevPackage.h"
#import "MozuApplicationCollection.h"


@implementation MOZUApplicationVersionClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAllApplicationsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetAllApplicationsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUApplicationCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetApplicationOperationWithApplicationId:(NSNumber*)applicationId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetApplicationOperationWithApplicationId:applicationId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevApplication alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetApplicationVersionOperationWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetApplicationVersionOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUApplicationVersion alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackagesOperationWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetPackagesOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPackageCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackageOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetPackageOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevPackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackageItemsMetadataOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetPackageItemsMetadataOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFolderMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackageItemMetadataOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId itempath:(NSString*)itempath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetPackageItemMetadataOperationWithApplicationVersionId:applicationVersionId packageId:packageId itempath:itempath];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackageFilesZipOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForGetPackageFilesZipOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;
	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddPackageOperationWithBody:(MOZUAppDevPackage*)body applicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForAddPackageOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevPackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForChangePackageFileNameOrPathOperationWithBody:(MOZURenameInfo*)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForChangePackageFileNameOrPathOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForAddPackageFileOperationWithBody:(NSInputStream*)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForAddPackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdatePackageFileOperationWithBody:(NSInputStream*)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForUpdatePackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeletePackageFileOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURLComponents URLComponentsForDeletePackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end