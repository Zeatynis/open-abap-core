CLASS cl_salv_column DEFINITION
  PUBLIC
  INHERITING FROM cl_salv_metadata_base
  CREATE PUBLIC.

  PUBLIC SECTION.
    CONSTANTS centered TYPE c VALUE 'c'.
    CONSTANTS left TYPE c VALUE 'l'.
    CONSTANTS right TYPE c VALUE 'r'.

    METHODS set_fixed_header_text
      IMPORTING
        VALUE(value) TYPE c.
    METHODS set_leading_spaces
      IMPORTING
        !value TYPE c.
    METHODS has_leading_spaces
      FINAL
      RETURNING
        VALUE(value) TYPE c .
    METHODS constructor
      IMPORTING
        !columnname        TYPE c
        !r_columns         TYPE REF TO data
        !r_controller      TYPE REF TO data OPTIONAL
        !r_table_structure TYPE REF TO data .
    METHODS get_alignment
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_columnname
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_currency
      RETURNING
        VALUE(value) TYPE c.
    METHODS get_currency_column
      RETURNING
        VALUE(value) TYPE c.
    METHODS get_ddic_datatype
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_decimals
      RETURNING
        VALUE(value) TYPE i .
    METHODS get_ddic_domain
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_intlen
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_inttype
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_outputlen
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_reference
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_ddic_rollname
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_decimals_column
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_decimals
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_edit_mask
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_f1_rollname
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_long_text
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_medium_text
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_output_length
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_quantity
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_quantity_column
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_round
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_round_column
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_row
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_short_text
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_tooltip
      RETURNING
        VALUE(value) TYPE c .
    METHODS has_leading_zero
      RETURNING
        VALUE(value) TYPE c .
    METHODS has_sign
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_lowercase
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_optimized
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_technical
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_visible
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_zero
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_alignment
      IMPORTING
        !value TYPE i DEFAULT 1 .
    METHODS set_currency
      IMPORTING
        !value TYPE any .
    METHODS set_currency_column
      IMPORTING
        !value TYPE any
      RAISING
        cx_root.
    METHODS set_ddic_reference
      IMPORTING
        !value TYPE any .
    METHODS set_decimals_column
      IMPORTING
        !value TYPE any
      RAISING
        cx_root.
    METHODS set_decimals
      IMPORTING
        !value TYPE any .
    METHODS set_edit_mask
      IMPORTING
        !value TYPE any .
    METHODS set_f1_rollname
      IMPORTING
        !value TYPE any .
    METHODS set_leading_zero
      IMPORTING
        !value TYPE c DEFAULT abap_true .
    METHODS set_long_text
      IMPORTING
        !value TYPE any .
    METHODS set_lowercase
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_medium_text
      IMPORTING
        !value TYPE any.
    METHODS set_optimized
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_output_length
      IMPORTING
        !value TYPE any.
    METHODS set_quantity
      IMPORTING
        !value TYPE any.
    METHODS set_quantity_column
      IMPORTING
        !value TYPE lvc_qfname
      RAISING
        cx_root.
    METHODS set_round
      IMPORTING
        !value TYPE any.
    METHODS set_round_column
      IMPORTING
        !value TYPE lvc_rndfn
      RAISING
        cx_root.
    METHODS set_row
      IMPORTING
        !value TYPE any.
    METHODS set_short_text
      IMPORTING
        !value TYPE any.
    METHODS set_sign
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_technical
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_tooltip
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_visible
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_zero
      IMPORTING
        !value TYPE c DEFAULT abap_true.
    METHODS set_decfloat_style
      IMPORTING
        !value TYPE any.
    METHODS get_decfloat_style
      RETURNING
        VALUE(value) TYPE c.
  PROTECTED SECTION.

    DATA leading_spaces TYPE c.
*"* protected components of class CL_SALV_COLUMN
*"* do not include other source files here!!!
    DATA specific_group TYPE c .
    DATA leading_zero TYPE c .
    DATA alignment TYPE c .
    DATA columnname TYPE c .
    DATA currency TYPE c .
    DATA currency_column TYPE c .
    DATA ddic_datatype TYPE c .
    DATA ddic_f4_available TYPE c .
    DATA ddic_f4_search_help TYPE c .
    DATA ddic_f4_value_range TYPE c .
    DATA ddic_intlen TYPE c .
    DATA ddic_inttype TYPE c .
    DATA ddic_leng TYPE c .
    DATA ddic_outputlen TYPE c.
    DATA: BEGIN OF ddic_reference,
            field TYPE c,
            column TYPE c,
          END OF ddic_reference.
    DATA ddic_decimals TYPE c  .
    DATA decimals_column TYPE c .
    DATA decimals TYPE c .
    DATA ddic_domain TYPE c .
    DATA edit_mask TYPE c .
    DATA f1_rollname TYPE c .
    DATA long_text TYPE c .
    DATA lowercase TYPE c .
    DATA medium_text TYPE c .
    DATA optimized TYPE c .
    DATA output_length TYPE c .
    DATA quantity TYPE c .
    DATA quantity_column TYPE c .
    DATA ddic_rollname TYPE c.
    DATA round TYPE c.
    DATA round_column TYPE c.
    DATA row TYPE c.
    DATA r_columns TYPE c.
    DATA short_text TYPE c.
    DATA sign TYPE c.
    DATA technical TYPE c.
    DATA tooltip TYPE c.
    DATA visible TYPE c.
    DATA zero TYPE c.
    DATA r_table_structure TYPE REF TO data .
    DATA decfloat_style TYPE c.
    DATA colddictxt TYPE c.

    METHODS fill_attributes_by_dfies
      IMPORTING
        !s_dfies                      TYPE data
        !check_for_identical_datatype TYPE abap_bool
        enable_precfield_handling     TYPE abap_bool.
    METHODS raise_method_only_valid_for
      IMPORTING
        !t_valid TYPE STANDARD TABLE
        !method  TYPE any .
    METHODS raise_column_not_in_data_table
      IMPORTING
        !method     TYPE any OPTIONAL
        !columnname TYPE any OPTIONAL
      RAISING
        cx_root.
  PRIVATE SECTION.
*"* private components of class CL_SALV_COLUMN
*"* do not include other source files here!!!
ENDCLASS.



CLASS cl_salv_column IMPLEMENTATION.


  METHOD is_technical.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_visible.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_zero.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD raise_column_not_in_data_table.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD raise_method_only_valid_for.

    ASSERT 1 = 'todo'.

  ENDMETHOD.

  METHOD set_alignment.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_currency.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_currency_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "set_currency_column


  METHOD set_ddic_reference.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_decfloat_style.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_decimals .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_decimals_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.

  METHOD set_edit_mask.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_f1_rollname .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_fixed_header_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_leading_spaces.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_leading_zero.
    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_long_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_LONG_TEXT


  METHOD set_lowercase.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_medium_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_MEDIUM_TEXT


  METHOD set_optimized.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_output_length.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_OUTPUT_LENGTH


  METHOD set_quantity.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_quantity_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "set_quantity_column


  METHOD set_round.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_round_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "set_round_column


  METHOD set_row.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_ROW


  METHOD set_short_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_SHORT_TEXT


  METHOD set_sign.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_technical .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_tooltip.

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_TOOLTIP


  METHOD set_visible.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_zero.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_optimized.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD constructor.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD fill_attributes_by_dfies.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_alignment.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_columnname.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_currency.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_currency_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_datatype .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_decimals .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_domain .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_intlen .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_inttype .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_outputlen.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_reference.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_ddic_rollname .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_decfloat_style.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_decimals .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_decimals_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_edit_mask.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_f1_rollname .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_long_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_medium_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_output_length.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_quantity.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_quantity_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_round.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_round_column.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_row.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_short_text.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_tooltip.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD has_leading_spaces.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD has_leading_zero.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD has_sign.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_lowercase .

    ASSERT 1 = 'todo'.

  ENDMETHOD.
ENDCLASS.