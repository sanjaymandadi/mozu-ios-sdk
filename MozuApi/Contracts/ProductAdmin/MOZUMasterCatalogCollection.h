
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
#import "MOZUAdminMasterCatalog.h"



@protocol MOZUMasterCatalogCollection
@end


/**
	Collection of master catalogs associated with a tenant.
*/
@interface MOZUMasterCatalogCollection : JSONModel<MOZUMasterCatalogCollection>

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) long totalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUAdminMasterCatalog> *items;

@end

