CLASS cl_bapi_msg DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ts_line,
        line_number    TYPE i,
        icon           TYPE c,
        type           TYPE c,
        id             TYPE c,
        number         TYPE c,
        message        TYPE string,
        message1       TYPE c,
        message2       TYPE c,
        long_text_icon TYPE c,
        message_v1     TYPE c,
        message_v2     TYPE c,
        message_v3     TYPE c,
        message_v4     TYPE c,
      END OF ts_line.

    TYPES:
      tt_line TYPE STANDARD TABLE OF ts_line.

    TYPES ts_message TYPE bapiret2.
    TYPES:
      tt_message TYPE STANDARD TABLE OF ts_message WITH DEFAULT KEY.

    CLASS-DATA gv_dummy TYPE c LENGTH 1.

    CLASS-METHODS add_message
      IMPORTING
        !ix_exception TYPE REF TO cx_root OPTIONAL
      CHANGING
        !ct_message   TYPE tt_message.
    CLASS-METHODS contains_error
      IMPORTING
        !it_message      TYPE tt_message
      RETURNING
        VALUE(rv_result) TYPE abap_bool.
    CLASS-METHODS display_messages
      IMPORTING
        !iv_display_warnings TYPE abap_bool DEFAULT abap_true
        !iv_display_infos    TYPE abap_bool DEFAULT abap_true
        !it_message          TYPE tt_message.
    CLASS-METHODS display_message_long_text
      IMPORTING
        !is_message TYPE bapiret2.
    CLASS-METHODS add_exception
      IMPORTING
        !ix_exception TYPE REF TO cx_root
      CHANGING
        !ct_message   TYPE tt_message.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS cl_bapi_msg IMPLEMENTATION.
  METHOD add_exception.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD add_message.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD contains_error.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD display_messages.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD display_message_long_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.

ENDCLASS.