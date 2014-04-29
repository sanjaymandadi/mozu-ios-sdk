
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationClient.h"
#import "MOZUProductReservationResource.h"



@interface MOZUProductReservationResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUProductReservationResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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

/**
Retrieves a list of product reservations according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

- (void)productReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter completionHandler:(void(^)(MOZUProductReservationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForGetProductReservationsOperationWithDataViewMode:dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a product reservation.
@param productReservationId Unique identifier of the product reservation.
*/

- (void)productReservationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId completionHandler:(void(^)(MOZUProductReservation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForGetProductReservationOperationWithDataViewMode:dataViewMode productReservationId:productReservationId];
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

@param body 
@param skipInventoryCheck 
*/

- (void)addProductReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation> *)body skipInventoryCheck:(NSNumber *)skipInventoryCheck completionHandler:(void(^)(NSArray<MOZUProductReservation> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForAddProductReservationsOperationWithDataViewMode:dataViewMode body:body skipInventoryCheck:skipInventoryCheck];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param body 
*/

- (void)commitReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation> *)body completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForCommitReservationsOperationWithDataViewMode:dataViewMode body:body];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param skipInventoryCheck 
*/

- (void)updateProductReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation> *)body skipInventoryCheck:(NSNumber *)skipInventoryCheck completionHandler:(void(^)(NSArray<MOZUProductReservation> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForUpdateProductReservationsOperationWithDataViewMode:dataViewMode body:body skipInventoryCheck:skipInventoryCheck];
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
Deletes a product reservation. For example, delete a reservation when an order is not processed to return the product quantity back to inventory.
@param productReservationId Unique identifier of the reservation.
*/

- (void)deleteProductReservationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForDeleteProductReservationOperationWithDataViewMode:dataViewMode productReservationId:productReservationId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end