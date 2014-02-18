
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUMasterCatalogClient.h"
#import "MOZUMasterCatalogResource.h"


@interface MOZUMasterCatalogResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUMasterCatalogResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

-(void)masterCatalogsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUMasterCatalogCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUMasterCatalogClient clientForGetMasterCatalogsOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)masterCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminMasterCatalog* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUMasterCatalogClient clientForGetMasterCatalogOperationWithDataViewMode:dataViewMode masterCatalogId:masterCatalogId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
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

-(void)updateMasterCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalog:(MOZUMasterCatalog*)masterCatalog masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminMasterCatalog* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUMasterCatalogClient clientForUpdateMasterCatalogOperationWithDataViewMode:dataViewMode masterCatalog:masterCatalog masterCatalogId:masterCatalogId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end