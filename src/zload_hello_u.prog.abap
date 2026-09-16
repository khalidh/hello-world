REPORT zload_hello_u.

DATA lv_uuid TYPE sysuuid_x16.

DO 3 TIMES.
  lv_uuid = cl_system_uuid=>create_uuid_x16_static( ).

  INSERT zhello_u FROM VALUE #(
    client  = sy-mandt
    uuid    = lv_uuid
    message = |Hello from RAP UUID { sy-index }|
  ).
ENDDO.

COMMIT WORK.

WRITE: / '3 demo rows inserted into ZHELLO_U (if not duplicates).'.
