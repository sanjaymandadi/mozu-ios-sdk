
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCartsAppliedDiscountClient.h"
#import "MOZUCartsAppliedDiscountResource.h"


@interface MOZUCartsAppliedDiscountResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCartsAppliedDiscountResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


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

/**
Applies a defined coupon to the cart specified in the request.
@param cartId Identifier of the cart to delete.
@param couponCode Code associated with the coupon to remove from the cart.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)applyCouponWithCartId:(NSString *)cartId couponCode:(NSString *)couponCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCartsAppliedDiscountClient clientForApplyCouponOperationWithCartId:cartId couponCode:couponCode responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

/**
Removes one or more applied coupons from the cart specified in the request.
@param cartId Identifier of the cart to delete.
*/

- (void)removeCouponsWithCartId:(NSString *)cartId completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCartsAppliedDiscountClient clientForRemoveCouponsOperationWithCartId:cartId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Removes an applied coupon from the cart specified in the request.
@param cartId Identifier of the cart to delete.
@param couponCode Code associated with the coupon to remove from the cart.
*/

- (void)removeCouponWithCartId:(NSString *)cartId couponCode:(NSString *)couponCode completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCartsAppliedDiscountClient clientForRemoveCouponOperationWithCartId:cartId couponCode:couponCode];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}



@end