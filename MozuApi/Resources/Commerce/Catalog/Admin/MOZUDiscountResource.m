
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountClient.h"
#import "MOZUDiscountResource.h"


@interface MOZUDiscountResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUDiscountResource

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

-(void)discountsWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDiscountCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForGetDiscountsOperationWithDataViewMode:dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)discountWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminDiscount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForGetDiscountOperationWithDataViewMode:dataViewMode discountId:discountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)discountContentWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDiscountLocalizedContent* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForGetDiscountContentOperationWithDataViewMode:dataViewMode discountId:discountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)generateRandomCouponWithDataViewMode:(MOZUDataViewMode)dataViewMode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForGenerateRandomCouponOperationWithDataViewMode:dataViewMode userClaims:userClaims];
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

-(void)createDiscountWithDataViewMode:(MOZUDataViewMode)dataViewMode discount:(MOZUAdminDiscount*)discount userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminDiscount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForCreateDiscountOperationWithDataViewMode:dataViewMode discount:discount userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)redeemDiscountWithDataViewMode:(MOZUDataViewMode)dataViewMode redemption:(MOZURedemption*)redemption userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZURedemption* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForRedeemDiscountOperationWithDataViewMode:dataViewMode redemption:redemption userClaims:userClaims];
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

-(void)updateDiscountWithDataViewMode:(MOZUDataViewMode)dataViewMode discount:(MOZUAdminDiscount*)discount discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminDiscount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForUpdateDiscountOperationWithDataViewMode:dataViewMode discount:discount discountId:discountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)updateDiscountContentWithDataViewMode:(MOZUDataViewMode)dataViewMode content:(MOZUDiscountLocalizedContent*)content discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDiscountLocalizedContent* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForUpdateDiscountContentOperationWithDataViewMode:dataViewMode content:content discountId:discountId userClaims:userClaims];
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

-(void)deleteDiscountWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForDeleteDiscountOperationWithDataViewMode:dataViewMode discountId:discountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

-(void)unRedeemDiscountWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSNumber*)discountId orderNumber:(NSNumber*)orderNumber userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDiscountClient clientForUnRedeemDiscountOperationWithDataViewMode:dataViewMode discountId:discountId orderNumber:orderNumber userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end