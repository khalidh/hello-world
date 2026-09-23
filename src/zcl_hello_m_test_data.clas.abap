CLASS zcl_hello_m_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_hello_m_test_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_data TYPE STANDARD TABLE OF zhello_msg.

    lt_data = VALUE #(
      ( mandt = sy-mandt id = '0000000001' message = 'Hello World RAP Managed' )
      ( mandt = sy-mandt id = '0000000002' message = 'Second test message' )
      ( mandt = sy-mandt id = '0000000003' message = 'Third test message' )
    ).

    DELETE FROM zhello_msg.
    INSERT zhello_msg FROM TABLE @lt_data.

    IF sy-subrc = 0.
      COMMIT WORK.
      out->write( |{ lines( lt_data ) } enregistrement(s) de test insere(s) dans ZHELLO_MSG.| ).
    ELSE.
      ROLLBACK WORK.
      out->write( 'Erreur lors de insertion des donnees de test.' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
