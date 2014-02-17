
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReturnClient.h"
#import "MOZUReturnResource.h"


@interface MOZUReturnResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUReturnResource

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

-(void)returnsWithWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturnCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetReturnsOperationWithWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)returnWithWithReturnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetReturnOperationWithWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)availableReturnActionsWithWithReturnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetAvailableReturnActionsOperationWithWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)paymentsWithWithReturnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPaymentCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetPaymentsOperationWithWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)paymentWithWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPayment* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetPaymentOperationWithWithReturnId:returnId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)availablePaymentActionsForReturnWithWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForGetAvailablePaymentActionsForReturnOperationWithWithReturnId:returnId paymentId:paymentId userClaims:userClaims];
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

-(void)createReturnWithWithRet:(MOZUReturn*)ret userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForCreateReturnOperationWithWithRet:ret userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)performPaymentActionForReturnWithWithAction:(MOZUPaymentAction*)action returnId:(NSString*)returnId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForPerformPaymentActionForReturnOperationWithWithAction:action returnId:returnId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)createPaymentActionForReturnWithWithAction:(MOZUPaymentAction*)action returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForCreatePaymentActionForReturnOperationWithWithAction:action returnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)performReturnActionsWithWithAction:(MOZUReturnAction*)action userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturnCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForPerformReturnActionsOperationWithWithAction:action userClaims:userClaims];
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

-(void)updateReturnWithWithRet:(MOZUReturn*)ret returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForUpdateReturnOperationWithWithRet:ret returnId:returnId userClaims:userClaims];
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

-(void)deleteReturnWithWithReturnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUReturnClient clientForDeleteReturnOperationWithWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end