
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerNoteClient.h"
#import "MOZUCustomerNoteResource.h"


@interface MOZUCustomerNoteResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerNoteResource

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
Retrieves the contents of a particular note attached to a specified customer account.
@param accountId Unique identifier of the customer account.
@param noteId Unique identifier of a particular note to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)accountNoteWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerNote *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerNoteClient clientForGetAccountNoteOperationWithAccountId:accountId noteId:noteId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of notes added to a customer account according to any specified filter criteria and sort options.
@param accountId Unique identifier of the customer account.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)accountNotesWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerNoteCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerNoteClient clientForGetAccountNotesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
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
Adds a new note to the specified customer account.
@param body Properties of a note configured for a customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addAccountNoteWithBody:(MOZUCustomerNote *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerNote *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerNoteClient clientForAddAccountNoteOperationWithBody:body accountId:accountId responseFields:responseFields];
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
Modifies an existing note for a customer account.
@param body Properties of a note configured for a customer account.
@param accountId Unique identifier of the customer account.
@param noteId Unique identifier of a particular note to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateAccountNoteWithBody:(MOZUCustomerNote *)body accountId:(NSInteger)accountId noteId:(NSInteger)noteId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerNote *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerNoteClient clientForUpdateAccountNoteOperationWithBody:body accountId:accountId noteId:noteId responseFields:responseFields];
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
Removes a note from the specified customer account.
@param accountId Unique identifier of the customer account.
@param noteId Unique identifier of a particular note to retrieve.
*/

- (void)deleteAccountNoteWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerNoteClient clientForDeleteAccountNoteOperationWithAccountId:accountId noteId:noteId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end