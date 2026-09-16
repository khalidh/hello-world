@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP Hello UUID Projection View'
@UI.headerInfo: {
  typeName: 'Hello Message',
  typeNamePlural: 'Hello Messages',
  title: { type: #STANDARD, value: 'Message' }
}
define root view entity ZC_HELLO_U
  provider contract transactional_query
  as projection on ZI_HELLO_U
{
  @UI.hidden: true
  key Uuid,

  @UI.lineItem: [ { position: 10 } ]
  @UI.identification: [ { position: 10 } ]
  Message,

  @UI.hidden: true
  CreatedBy,
  @UI.hidden: true
  CreatedAt,
  @UI.hidden: true
  LastChangedBy,
  @UI.hidden: true
  LastChangedAt
}
