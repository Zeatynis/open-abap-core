CLASS cl_salv_layout DEFINITION
  PUBLIC
  INHERITING FROM cl_salv_metadata_base
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES: BEGIN OF salv_s_layout,
              layout   TYPE c,
              text    TYPE string,
              user_specific TYPE c,
              default  TYPE c,
            END OF salv_s_layout.

    TYPES: BEGIN OF salv_s_layout_key,
              report   TYPE c,
              handle   TYPE c,
              logical_group  TYPE c,
           END OF salv_s_layout_key.

    CONSTANTS restrict_none TYPE i VALUE 3.
    CONSTANTS restrict_user_dependant TYPE i VALUE 2.
    CONSTANTS restrict_user_independant TYPE i VALUE 1.

    CLASS-METHODS _create_for_fwk_changelog
    IMPORTING o_fwk_changelog TYPE REF TO data
    RETURNING VALUE(o_layout) TYPE REF TO cl_salv_layout.
    METHODS constructor
    IMPORTING
      !r_controller TYPE REF TO data OPTIONAL.
    METHODS f4_layouts
    RETURNING
      VALUE(value) TYPE salv_s_layout .
    METHODS get_current_layout
    RETURNING
      VALUE(value) TYPE salv_s_layout .
    METHODS get_default_layout
    RETURNING
      VALUE(value) TYPE salv_s_layout .
    METHODS get_initial_layout
    RETURNING
      VALUE(value) TYPE c .
    METHODS get_key
    RETURNING
      VALUE(value) TYPE salv_s_layout_key .
    METHODS get_save_restriction
    RETURNING
      VALUE(value) TYPE i .
    METHODS has_default
    RETURNING
      VALUE(value) TYPE sap_bool .
    METHODS set_default
    IMPORTING
      !value TYPE sap_bool .
    METHODS set_initial_layout
    IMPORTING
      !value TYPE c .
    METHODS set_key
    IMPORTING
      !value TYPE salv_s_layout_key .
    METHODS set_save_restriction
    IMPORTING
      !value TYPE i DEFAULT 3.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA s_key TYPE salv_s_layout_key .
    DATA save_restriction TYPE i .
    DATA initial_layout TYPE c .
    DATA s_current_layout TYPE salv_s_layout .
    DATA default TYPE sap_bool VALUE abap_false .
ENDCLASS.



CLASS cl_salv_layout IMPLEMENTATION.


  METHOD constructor.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD f4_layouts.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_current_layout.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_default_layout.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_initial_layout.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_key.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_layouts.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_save_restriction.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD has_default .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_default.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_initial_layout.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_key.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_save_restriction.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD _create_for_fwk_changelog.

    ASSERT 1 = 'todo'.

  ENDMETHOD.
ENDCLASS.