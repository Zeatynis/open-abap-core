CLASS cl_salv_metadata DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS false TYPE c VALUE 'c'.
    CONSTANTS true TYPE c VALUE 'c'.

    "! display object is handed over separately or can be derived from controller
    METHODS constructor
      IMPORTING
        !r_controller     TYPE REF TO data OPTIONAL
        !name             TYPE string OPTIONAL.
    METHODS set_fwk_changelog
      IMPORTING
        o_fwk_changelog   TYPE REF TO data
      RAISING
        cx_root.
  PROTECTED SECTION.

    DATA name TYPE string .
    DATA r_controller TYPE REF TO data .
    DATA o_display_object TYPE REF TO data.
    DATA o_fwk_changelog  TYPE REF TO data.
    DATA use_fwk_changelog TYPE abap_bool.
*"* private components of class CL_SALV_METADATA
*"* do not include other source files here!!!
    METHODS set_display_object
      IMPORTING
        o_display_object  TYPE REF TO data
      RAISING
        cx_root.
    METHODS notify_change
      IMPORTING
        t_change_name TYPE INDEX TABLE
        flavour       TYPE c
        refresh_mode  TYPE c
        method        TYPE any OPTIONAL
        object        TYPE any OPTIONAL
        frontend      TYPE c OPTIONAL.
    METHODS repair_rules.

  PRIVATE SECTION.
*"* private components of class CL_SALV_METADATA
*"* do not include other source files here!!!
ENDCLASS.



CLASS cl_salv_metadata IMPLEMENTATION.


  METHOD constructor.

    ASSERT 1 = 'todo'.

  ENDMETHOD.


  METHOD notify_change.
    ASSERT 1 = 'todo'.
  ENDMETHOD.


  METHOD repair_rules.
    ASSERT 1 = 'todo'.
  ENDMETHOD.


  METHOD set_display_object.
    ASSERT 1 = 'todo'.
  ENDMETHOD.


  METHOD set_fwk_changelog.
    ASSERT 1 = 'todo'.
  ENDMETHOD.
ENDCLASS.