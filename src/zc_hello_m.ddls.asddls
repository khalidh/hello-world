@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP Hello World Projection View'
@UI.headerInfo: {
  typeName: 'Hello Message',
  typeNamePlural: 'Hello Messages',
  title: { type: #STANDARD, value: 'Message' }
}
define root view entity ZC_HELLO_M
  provider contract transactional_query
  as projection on ZI_HELLO_M
{
  @UI.lineItem: [ { position: 10 } ]
  @UI.identification: [ { position: 10 } ]
  key Id,

  @UI.lineItem: [ { position: 20 } ]
  @UI.identification: [ { position: 20 } ]
  Message
}
