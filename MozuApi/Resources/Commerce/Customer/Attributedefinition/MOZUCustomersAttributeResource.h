
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUExtensibleAttribute.h"
#import "MOZUExtensibleAttributeCollection.h"
#import "MOZUExtensibleAttributeVocabularyValue.h"


@interface MOZUCustomersAttributeResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)attributesWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter completionHandler:(void(^)(MOZUExtensibleAttributeCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param attributeFQN 
*/

- (void)attributeWithAttributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(MOZUExtensibleAttribute *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param attributeFQN 
*/

- (void)attributeVocabularyValuesWithAttributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(NSArray<MOZUExtensibleAttributeVocabularyValue> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end