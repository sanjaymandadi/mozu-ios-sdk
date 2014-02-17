
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCategoryClient.h"
#import "MOZUCategoryUrl.h"
#import "MozuAdminCategory.h"
#import "MozuAdminCategoryPagedCollection.h"
#import "MozuAdminCategoryCollection.h"


@implementation MOZUCategoryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetCategoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForGetCategoriesOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminCategoryPagedCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForGetCategoryOperationWithCategoryId:categoryId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminCategory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetChildCategoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForGetChildCategoriesOperationWithCategoryId:categoryId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminCategoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode category:(MOZUAdminCategory*)category userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForAddCategoryOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminCategory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode category:(MOZUAdminCategory*)category categoryId:(NSInteger)categoryId cascadeVisibility:(NSNumber*)cascadeVisibility userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForUpdateCategoryOperationWithCategoryId:categoryId cascadeVisibility:cascadeVisibility];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminCategory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteCategoryByIdOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId cascadeDelete:(NSNumber*)cascadeDelete userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCategoryURL URLForDeleteCategoryByIdOperationWithCategoryId:categoryId cascadeDelete:cascadeDelete];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end