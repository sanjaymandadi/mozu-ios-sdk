
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductClient.h"
#import "MOZUProductResource.h"


@interface MOZUProductResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUProductResource

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

-(void)productsWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit noCount:(NSNumber*)noCount userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForGetProductsOperationWithDataViewMode:dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit noCount:noCount userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)productWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForGetProductOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)productInCatalogsWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForGetProductInCatalogsOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)productInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForGetProductInCatalogOperationWithDataViewMode:dataViewMode productCode:productCode catalogId:catalogId userClaims:userClaims];
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

-(void)addProductWithDataViewMode:(MOZUDataViewMode)dataViewMode product:(MOZUAdminProduct*)product userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForAddProductOperationWithDataViewMode:dataViewMode product:product userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)addProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogInfoIn:(MOZUProductInCatalogInfo*)productInCatalogInfoIn productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForAddProductInCatalogOperationWithDataViewMode:dataViewMode productInCatalogInfoIn:productInCatalogInfoIn productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateProductWithDataViewMode:(MOZUDataViewMode)dataViewMode product:(MOZUAdminProduct*)product productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForUpdateProductOperationWithDataViewMode:dataViewMode product:product productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)updateProductInCatalogsWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogsIn:(NSArray<MOZUProductInCatalogInfo>*)productInCatalogsIn productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForUpdateProductInCatalogsOperationWithDataViewMode:dataViewMode productInCatalogsIn:productInCatalogsIn productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)updateProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogInfoIn:(MOZUProductInCatalogInfo*)productInCatalogInfoIn productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForUpdateProductInCatalogOperationWithDataViewMode:dataViewMode productInCatalogInfoIn:productInCatalogInfoIn productCode:productCode catalogId:catalogId userClaims:userClaims];
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

-(void)deleteProductWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForDeleteProductOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

-(void)deleteProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductClient clientForDeleteProductInCatalogOperationWithDataViewMode:dataViewMode productCode:productCode catalogId:catalogId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end