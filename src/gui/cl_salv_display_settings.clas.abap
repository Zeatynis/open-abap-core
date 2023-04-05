CLASS cl_salv_display_settings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS c_header_size_large TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS c_header_size_small TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS c_header_size_medium TYPE i VALUE 2 ##NO_TEXT.

    METHODS is_merged
      RETURNING
        VALUE(value) TYPE abap_bool .
    METHODS set_no_merging
      IMPORTING
        !value TYPE abap_bool .
    METHODS set_striped_pattern
      IMPORTING
        !value TYPE c .
    METHODS is_striped_pattern
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_list_header_size
      IMPORTING
        !value TYPE i .
    METHODS get_list_header_size
      RETURNING
        VALUE(value) TYPE i .
    METHODS set_horizontal_lines
      IMPORTING
        !value TYPE c .
    METHODS is_horizontal_lines
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_vertical_lines
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_vertical_lines
      IMPORTING
        !value TYPE c .
    METHODS set_list_header
      IMPORTING
        !value TYPE c .
    METHODS get_list_header
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_suppress_empty_data
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_suppress_empty_data
      IMPORTING
        !value TYPE c .
    METHODS set_fit_column_to_table_size
      IMPORTING
        !value TYPE c .
    METHODS get_fit_column_to_table_size
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_max_linesize
      RETURNING
        VALUE(value) TYPE int4 .
    METHODS get_min_linesize
      RETURNING
        VALUE(value) TYPE int4 .
    METHODS set_max_linesize
      IMPORTING
        VALUE(value) TYPE int4 .
    METHODS set_min_linesize
      IMPORTING
        VALUE(value) TYPE int4 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS cl_salv_display_settings IMPLEMENTATION.


  METHOD get_fit_column_to_table_size.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_list_header.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_list_header_size.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_max_linesize.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_min_linesize.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_suppress_empty_data.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_horizontal_lines.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_merged.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_striped_pattern.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_vertical_lines.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_fit_column_to_table_size.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_horizontal_lines.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_list_header.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_list_header_size.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_max_linesize.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_min_linesize.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_no_merging.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_striped_pattern.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_suppress_empty_data.
    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_vertical_lines.

    ASSERT 1 = 'todo'.

  ENDMETHOD.
ENDCLASS.