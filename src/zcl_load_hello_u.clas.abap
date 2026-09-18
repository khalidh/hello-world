CLASS zcl_load_hello_u DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_load_hello_u IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
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

    out->write( '3 demo rows inserted into ZHELLO_U (if not duplicates).' ).
  ENDMETHOD.
ENDCLASS.
