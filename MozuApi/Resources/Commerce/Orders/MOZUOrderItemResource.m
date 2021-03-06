
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderItemClient.h"
#import "MOZUOrderItemResource.h"


@interface MOZUOrderItemResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUOrderItemResource

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

/**
orders-orderitems Get GetOrderItemViaLineId description DOCUMENT_HERE 
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param lineId 
@param orderId Unique identifier of the order.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/

- (void)orderItemViaLineIdWithOrderId:(NSString *)orderId lineId:(NSInteger)lineId draft:(NSNumber *)draft responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrderItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForGetOrderItemViaLineIdOperationWithOrderId:orderId lineId:lineId draft:draft responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a single order item.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)orderItemWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId draft:(NSNumber *)draft responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrderItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForGetOrderItemOperationWithOrderId:orderId orderItemId:orderItemId draft:draft responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of all items in an order.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)orderItemsWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrderItemCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForGetOrderItemsOperationWithOrderId:orderId draft:draft responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

/**
Adds a new item to a defined order.
@param body The details associated with a specific item in an order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)createOrderItemWithBody:(MOZUOrderItem *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForCreateOrderItemOperationWithBody:body orderId:orderId updateMode:updateMode version:version skipInventoryCheck:skipInventoryCheck responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

/**
Update the discount applied to an item in an order.
@param body Properties of all applied discounts for an associated cart, order, or product. 
@param discountId Unique identifier of the discount. System-supplied and read only.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)updateOrderItemDiscountWithBody:(MOZUAppliedDiscount *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId discountId:(NSInteger)discountId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForUpdateOrderItemDiscountOperationWithBody:body orderId:orderId orderItemId:orderItemId discountId:discountId updateMode:updateMode version:version responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
orders-orderitems Put UpdateItemDuty description DOCUMENT_HERE 
@param dutyAmount 
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)updateItemDutyWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId dutyAmount:(NSNumber *)dutyAmount updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForUpdateItemDutyOperationWithOrderId:orderId orderItemId:orderItemId dutyAmount:dutyAmount updateMode:updateMode version:version responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates the item fulfillment information for the order specified in the request.
@param body The details associated with a specific item in an order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)updateItemFulfillmentWithBody:(MOZUOrderItem *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForUpdateItemFulfillmentOperationWithBody:body orderId:orderId orderItemId:orderItemId updateMode:updateMode version:version responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Override the price of an individual product on a line item in the specified order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param price The override price to specify for this item in the specified order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)updateItemProductPriceWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId price:(NSNumber *)price updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForUpdateItemProductPriceOperationWithOrderId:orderId orderItemId:orderItemId price:price updateMode:updateMode version:version responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Update the quantity of an item in an order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param quantity The number of cart items in the shopper's active cart.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)updateItemQuantityWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId quantity:(NSInteger)quantity updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForUpdateItemQuantityOperationWithOrderId:orderId orderItemId:orderItemId quantity:quantity updateMode:updateMode version:version responseFields:responseFields];
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
Removes a previously added item from a defined order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)deleteOrderItemWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUOrderItemClient clientForDeleteOrderItemOperationWithOrderId:orderId orderItemId:orderItemId updateMode:updateMode version:version];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}



@end