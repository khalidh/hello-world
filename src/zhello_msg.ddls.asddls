@EndUserText.label: 'RAP Hello World Persistence Table'
define table zhello_msg {
  key mandt   : abap.clnt not null;
  key id      : abap.numc(10) not null;
  message     : abap.char(255);
}
