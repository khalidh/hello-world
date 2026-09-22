@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP Hello World Interface View'
define root view entity ZI_HELLO_M
  as select from zhello_msg
{
  key id      as Id,
      message as Message
}
