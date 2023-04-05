CLASS cl_salv_column_list DEFINITION
  PUBLIC
  INHERITING FROM cl_salv_column
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_color,
            col TYPE i,
            int TYPE i,
            inv TYPE i,
           END OF ty_color.

    CONSTANTS button TYPE c VALUE 'a'.
    CONSTANTS checkbox TYPE c VALUE 'b'.
    CONSTANTS dropdown TYPE c VALUE 'c'.
    CONSTANTS hotspot TYPE c VALUE 'd'.
    CONSTANTS link TYPE c VALUE 'e'.
    CONSTANTS text TYPE c VALUE 'f'.

    CLASS cl_salv_specific_groups DEFINITION LOAD .
    METHODS get_specific_group
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_specific_group
      IMPORTING
        !id TYPE c .
    METHODS get_cell_type
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_color
      RETURNING
        VALUE(value) TYPE ty_color .
    METHODS get_f4_checktable
      RETURNING
        VALUE(value) TYPE c .
    METHODS get_text_column
      RETURNING
        VALUE(value) TYPE c .
    METHODS has_f4
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_active_for_rep_interface
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_icon
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_key
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_key_presence_required
      RETURNING
        VALUE(value) TYPE c .
    METHODS is_symbol
      RETURNING
        VALUE(value) TYPE c .
    METHODS set_active_for_rep_interface
      IMPORTING
        !value TYPE c .
    INTERFACE if_salv_c_cell_type LOAD .
    METHODS set_cell_type
      IMPORTING
        !value TYPE c.
    METHODS set_color
      IMPORTING
        !value TYPE ty_color .
    METHODS set_dropdown_entry
      IMPORTING
        !value TYPE c .
    METHODS set_hyperlink_entry
      IMPORTING
        !value TYPE c .
    INTERFACE if_salv_c_bool_sap LOAD .
    METHODS set_f4
      IMPORTING
        !value TYPE c .
    METHODS set_f4_checktable
      IMPORTING
        !value TYPE tabname .
    METHODS set_icon
      IMPORTING
        !value TYPE c .
    METHODS set_key
      IMPORTING
        !value TYPE c .
    METHODS set_key_presence_required
      IMPORTING
        !value TYPE c .
    METHODS set_symbol
      IMPORTING
        !value TYPE c .
    METHODS set_text_column
      IMPORTING
        !value TYPE lvc_fname
      RAISING
        cx_root.
*"* protected components of class CL_SALV_COLUMN_LIST
*"* do not include other source files here!!!
  PROTECTED SECTION.
    TYPES: BEGIN OF ys_f4_help_attributes,
             register                  TYPE c,
             field_transport_before_f4 TYPE c,
             data_changed_after_f4     TYPE c,
           END OF ys_f4_help_attributes .


    DATA active_for_rep_interface TYPE c .
    DATA cell_type TYPE c VALUE 'c' .
    DATA cell_type_dropdown_entry TYPE c .
    DATA cell_type_hyperlink_entry TYPE c .
    DATA color TYPE ty_color.

    DATA decorator_f4 TYPE c .
    DATA decorator_icon TYPE c .
    DATA decorator_symbol TYPE c .
    DATA f4_checktable TYPE c .
    DATA key TYPE c .
    DATA key_presence_required TYPE c .
    DATA text_column TYPE c .
    DATA drop_down_handle_columnname TYPE c.
    DATA all_cells_input_enabled TYPE c.
    DATA s_registered_f4_help TYPE ys_f4_help_attributes.
    DATA has_registered_f4_help TYPE c.
    DATA urge_foreign_key_check TYPE c.

    METHODS fill_attributes_by_dfies REDEFINITION.

    METHODS set_edit_attributes
      IMPORTING columnname                  TYPE c
                all_cells_input_enabled     TYPE c
                drop_down_handle_columnname TYPE c
                s_registered_f4_help        TYPE ys_f4_help_attributes
                has_registered_f4_help      TYPE c OPTIONAL
                urge_foreign_key_check      TYPE c OPTIONAL
      RAISING   cx_root.

  PRIVATE SECTION.
*"* private components of class CL_SALV_COLUMN_LIST
*"* do not include other source files here!!!
ENDCLASS.



CLASS cl_salv_column_list IMPLEMENTATION.


  METHOD set_text_column .

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "set_text_column


  METHOD set_symbol .

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_SYMBOL


  METHOD set_specific_group.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_key_presence_required .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_key .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_icon .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_hyperlink_entry .

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_DROPDOWN_ENTRY


  METHOD set_f4_checktable .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_f4 .
    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_edit_attributes.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_dropdown_entry .

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_DROPDOWN_ENTRY


  METHOD set_color .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD set_cell_type .

    ASSERT 1 = 'todo'.

  ENDMETHOD.                    "SET_CELL_TYPE


  METHOD set_active_for_rep_interface .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_symbol .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_key_presence_required .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_key .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_icon .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD is_active_for_rep_interface .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD has_f4 .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_text_column .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_specific_group.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_f4_checktable .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_color .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD get_cell_type .

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD fill_attributes_by_dfies.

    ASSERT 1 = 'todo'.

  ENDMETHOD.
ENDCLASS.