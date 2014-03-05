
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeClient.h"
#import "MOZUCustomerAttributeResource.h"



@interface MOZUCustomerAttributeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUCustomerAttributeResource


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

/**
Retrieves the contents of an attribute associated with the specified customer account.
@param accountId Identifier of the customer account associated with the attribute to retrieve.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)accountAttributeWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForGetAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of customer account attributes.
@param accountId Identifier of the customer account associated with the attributes to retrieve.
@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

-(void)accountAttributesWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttributeCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForGetAccountAttributesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
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

/**
Applies a defined attribute to the customer account specified in the request and assigns a value to the customer attribute.
@param body Properties of the customer account attribute to create.
@param accountId Unique identifier of the customer account.
*/

-(void)addAccountAttributeWithBody:(MOZUCustomerAttribute*)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForAddAccountAttributeOperationWithBody:body accountId:accountId userClaims:userClaims];
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

/**
Updates one or more details of a customer account attribute.
@param body The properties of the customer account attribute to update.
@param accountId Identifier of the customer account associated with the attribute.
@param removeMissing If true, remove the items missing from the collection.
*/

-(void)updateAccountAttributeWithBody:(MOZUCustomerAttribute*)body accountId:(NSInteger)accountId removeMissing:(NSNumber *)removeMissing userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForUpdateAccountAttributeOperationWithBody:body accountId:accountId removeMissing:removeMissing userClaims:userClaims];
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