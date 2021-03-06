
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
#import "MOZUView.h"



@protocol MOZUDocumentList
@end


/**
	The list of document types and related properties that define content used by the content management system (CMS).
*/
@interface MOZUDocumentList : JSONModel<MOZUDocumentList>

/**
The type of the document list, containing content for a site. For example, a list type could be web pages.
*/
@property(nonatomic) NSString * documentListType;

/**
List of document types associated with this document list.
*/
@property(nonatomic) NSArray *documentTypes;

/**
Indicates if the document list and document list type are enabled to publish. If true, publishing of draft documents in this document list/document list type is enabled for the site. If false, all document changes are immediately published in live mode.
*/
@property(nonatomic) NSNumber * enablePublishing;

/**
The fully qualified name of the document list.
*/
@property(nonatomic) NSString * listFQN;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
If applicable, the registered namespace associated with objects, used to generate the fully qualified name. If no namespace is defined, the namespace associated with the tenant is automatically assigned.
*/
@property(nonatomic) NSString * namespace;

/**
The ID of the specific scope for the object. 
*/
@property(nonatomic) NSNumber * scopeId;

/**
The scope at which the object exists, such as "Tenant", "MasterCatalog", or "Site". Scope delineates the level and area of Mozu the object exists within or affects.
*/
@property(nonatomic) NSString * scopeType;

/**
Indicates the security level for the document content as public, administrator, or owner.
*/
@property(nonatomic) NSString * security;

/**
Indicates if modified documents are published automatically or saved to publish at a later time. If true, changed documents in this list can be saved as drafts until they are published to the site. If false, all document changes are immediately published in live mode. System-supplied and read only.
*/
@property(nonatomic) NSNumber * supportsPublishing;

/**
List description of usages for content within a view and scope.
*/
@property(nonatomic) NSArray *usages;

/**
Metadata content for entities, used by document lists, document type lists, document type, views, entity lists, and list views.
*/
@property(nonatomic) NSObject * metadata;

/**
The view in the site used by associated entities or document lists/list types.
*/
@property(nonatomic) NSArray<MOZUView> *views;

@end

