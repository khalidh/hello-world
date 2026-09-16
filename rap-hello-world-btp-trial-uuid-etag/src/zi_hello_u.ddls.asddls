@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP Hello UUID Interface View'
define root view entity ZI_HELLO_U
  as select from zhello_u
{
  key uuid            as Uuid,
      message         as Message,

  @Semantics.user.createdBy: true
      created_by      as CreatedBy,

  @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,

  @Semantics.user.localInstanceLastChangedBy: true
      last_changed_by as LastChangedBy,

  @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt
}
