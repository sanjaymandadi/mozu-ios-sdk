
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"



@protocol MOZUContentFacet
@end


/**
	Properties of the facet used to retrieve documents.
*/
@interface MOZUContentFacet : JSONModel<MOZUContentFacet>

/**
The number of facet results.
*/
@property(nonatomic) NSInteger count;

/**
The name of the facet.
*/
@property(nonatomic) NSString* name;

@end
