@EndUserText.label: 'RAP Hello World Persistence Table'
define table zhello_u {
  key client           : abap.clnt not null;
  key uuid             : sysuuid_x16 not null;
  message              : abap.char(255);
  created_by           : abp_creation_user;
  created_at           : abp_creation_tstmpl;
  last_changed_by      : abp_locinst_lastchange_user;
  last_changed_at      : abp_locinst_lastchange_tstmpl;
}
