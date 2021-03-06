
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentDraftSummaryClient.h"
#import "MOZUDocumentDraftSummaryResource.h"


@interface MOZUDocumentDraftSummaryResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUDocumentDraftSummaryResource

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
Retrieves a list of the documents currently in draft state, according to any defined filter and sort criteria.
@param documentLists List of document lists that contain documents to delete.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)listDocumentDraftSummariesWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex documentLists:(NSString *)documentLists responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDocumentDraftSummaryPagedCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDocumentDraftSummaryClient clientForListDocumentDraftSummariesOperationWithPageSize:pageSize startIndex:startIndex documentLists:documentLists responseFields:responseFields];
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
Deletes the drafts of the specified documents. Published documents cannot be deleted.
@param body Unique identifiers of the documents to delete.
@param documentLists List of document lists that contain documents to delete.
*/

- (void)deleteDocumentDraftsWithBody:(NSArray *)body documentLists:(NSString *)documentLists completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDocumentDraftSummaryClient clientForDeleteDocumentDraftsOperationWithBody:body documentLists:documentLists];
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
Publish one or more document drafts to live content on the site.
@param body Unique identifiers of the documents to delete.
@param documentLists List of document lists that contain documents to delete.
*/

- (void)publishDocumentsWithBody:(NSArray *)body documentLists:(NSString *)documentLists completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDocumentDraftSummaryClient clientForPublishDocumentsOperationWithBody:body documentLists:documentLists];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end