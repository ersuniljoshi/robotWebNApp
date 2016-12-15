*** Settings ***
Library  Selenium2Library

*** Variables ***
# CCG DATAGRID AFF
${ccg_datagrid_AFF_click_menu}  xpath=//ul[@id="nav"]//img[@alt='Menu']
${ccg_datagrid_AFF_click_ccg}  xpath=//a[contains(text(),"Controller Configuration Guide") and @class='dynatree-title']
${ccg_datagrid_AFF_platform_family_dropdown}  xpath=//select[@id="ddlPlatformFamily"]/option[@value='AFF A200']
${ccg_datagrid_AFF_platform_model_dropdown}  xpath=//select[@id="ddlPlatformModel2"]/option[@value='AFF A200']
# CCG AUTOFILLED AFF
${ccg_data_autofilled_AFF_palform_config}  xpath=//select[@id="ddlPlatformConfig"]/option[@value='AFF A200A']
${ccg_data_autofilled_AFF_report_style}  xpath=//select[@id="ddlReportStyle"]/option[@value='Classic CCG Report']
${ccg_data_autofilled_AFF_show}  xpath=//select[@id="MainContent_ddlDRLShow"]//option[@value='3']
# CCG DATAGRID FAS
${ccg_datagrid_FAS_platform_family}  xpath=//select[@id="ddlPlatformFamily"]/option[@value='FAS200']
${ccg_datagrid_FAS_platform_model}  xpath=//select[@id="ddlPlatformModel2"]//option[@value='FAS250']
# CCG AUTOFILLED FAS
${ccg_data_autofilled_FAS_report_style}  xpath=//select[@id="ddlReportStyle"]/option[@value='Classic CCG Report']
${ccg_data_autofilled_FAS_show}  xpath=//select[@id="MainContent_ddlDRLShow"]//option[@value='3']
# CCG RUN REPORT
${ccg_run_report_button}  xpath=//input[@id="btnRunReportFake"]
# CCG EXPORT REPORT
${ccg_export_button}  xpath=//input[@id="MainContent_btnExportReportFake"]
# PLATFORM LED
${platform_led_navigate_to_led_click_menu}  xpath=//ul[@id="nav"]//img[@alt='Menu']
${platform_led_click_platform_led}  xpath=//a[contains(text(),"Platform Port LED") and @class='dynatree-title']
# PLATFORM LED DROPDOWN
${platform_led_dropdown_platform_model}  xpath=//select[@id="ddlPlatformModel"]/option[@value='AFF A200']
${platform_led_dropdown_platform_config}  xpath=//select[@id="ddlPlatformConfig"]/option[@value='AFF A200A']
# PLATFORM LED VIEW
${platform_led_view_led_config}  xpath=//a[@id="lnkLEDConfig"]
${platform_led_view_led}  xpath=//a[@id="lnkLED"]
${platform_led_view_icon}  xpath=//a[@id="lnkIcon"]
# PLATFORM LED ADD LED CONFIG
${platform_led_add_led_button}  xpath=//input[@id="btnAddLEDConfigHidden"]
${click_to_fill_led_config}  xpath=//input[@id="MainContent_txtLEDConfig"]
${text_led_config}  Chassis New7
${platform_led_button_operational_status}  xpath=//input[@id="MainContent_btnAddOperationalStatus"]
${iframe}  xpath=.//iframe[@class='cboxIframe']
${add_text_operational_status}  xpath=//input[@id="txtOperationalStatus"]
${text_opeartional_status}  functional
${add_text_operational_description}  xpath=//textarea[@id="txtOperationalDescription"]
${text_operational_description}  awesome
${led_add_operational_status}  xpath=//select[@id="ddLED"]/option[2]
${indicator_add_operational}  xpath=//input[@id="lblIndicator"]
${text_indicator}  shutdown
${apply_button_pop_up}  xpath=//input[@id="btnSave"]
${save_button_window}  xpath=//input[@id="MainContent_btnSaveMain"]
# ADD PLATFORM LED
${add_led_button}  xpath=//input[@id="btnAddLED"]
${click_text_led_name}  xpath=//input[@id="txtLEDName"]
#${text_led_name}  led11
${click_led_display_name}  xpath=//input[@id="txtLEDDisplayName"]
${text_led_display_name}  Power
${click_led_label}  xpath=//input[@id="txtLEDLabel"]
${text_led_label}  good
${click_dropdown_icon}  xpath=//select[@id="ddlLEDIcon"]/option[@value='7441485']
${save_button_add_led}  xpath=//input[@id="btnSave"]
# EDIT LED
#${edit_grid_led_details}  xpath=.//table[@id='grdLEDDetails']/tbody/tr[2]/td[2]/span/a
${edit_grid_led_details}  xpath=//*[@class="isDirty" and .= 'Chassis Attention Front']
# ADD ICON
${add_icon_button}  xpath=//input[@id="btnAddIcon"]
${icon_category_dropdown}  xpath=//select[@id="ddlIconCategory"]/option[@value='LED']
${click_icon_type}  xpath=//input[@id="txtIconType"]
${text_icon_type}  icon7
# EDIT ICON
${grid_icon_details}  xpath=.//table[@id='grdIconDetails']/tbody/tr[2]/td[3]/span/a
${click_text_icon_type}  xpath=//input[@id="txtIconType"]
${text_icon_type}  icon07
# CHANGE REPORT
${click_report_style}  xpath=//*[@id="MainContent_rdoReportStyle"]/tbody/tr/td[2]/label
# EDIT PLATFORM LED PORT
${edit_led_port_report}  xpath=//*[@id="MainContent_rdoReportStyle_0"]
${grid_platform_led_extended}  xpath=//*[@id="MainContent_grdPlatformPortLEDExtended"]/tbody/tr[2]/td[1]/div/a[1]
${icon_type_dropdown}  xpath=//*[@id="ddlPortIconType"]/option[3]
${button_before_save}  xpath=//*[@id="btnBeforeSave"]
# ADD CARD
${click_card_from_menu}  xpath=//a[contains(text(),"Adapter Card Manager") and @class='dynatree-title']
${add_card_button}  xpath=//input[@id="AddCardBtn"]
${click_card_part_no}  xpath=//input[@id="partNoTxtBx"]
${text_card_part_no}  0346
${click_card_description}  xpath=//input[@id="partDescTxtBx"]
${card_description}  good
${slot_type_ddl}  xpath=//*[@id="slotTypeDDL"]/option[2]
${click_port_count_no}  xpath=//input[@id="portCountTxtBX"]
${text_port_count}  2
${apply_button}  xpath=//input[@id="Apply"]
# EDIT CARD
${edit_card_data}  xpath=//a[@id="CardAnchor" and .='X-52194-00-R6']
#${edit_card_data}  xpath=//*[@id="CardAnchor" and .='${tmp_card_port_no_edit}']
${edit_link_button}  xpath=//a[@id="EditLinkBtn"]
${edit_new_part_count_no}  017
${card_content}  X-52194-00-R6
# ADD CABLE
${click_cable_from_menu}  xpath=//a[contains(text(),"Cable Manager") and @class='dynatree-title']
${click_text_part_no}  xpath=//input[@id="txtPartNumber"]
${text_part_no}  005
${click_text_desc}  xpath=//input[@id="txtPartDesc"]
${text_part_desc}  good
${begin_cable_dropdown}  xpath=//*[@id="ddlBeginCablePlugType"]/option[2]
${end_cable_dropdown}  xpath=//*[@id="ddlEndCablePlugType"]/option[2]
${medium_dropdown}  xpath=//*[@id="ddlMediumType"]/option[2]
${click_cable_length}  xpath=//*[@id="txtCableLength_cm"]
${text_cable_length}  25
# EDIT CABLE
${end_cable_plug_type_dropdown}  xpath=//*[@id="ddlEndCablePlugType"]/option[1]
${submit_button}  xpath=//input[@id="btnAssociationSubmit"]
${label_success}  xpath=//span[@id="lblSuccess"]
# VIEW FROM DROPDOWN
${cable_dropdown}  xpath=//*[@id="ddlCable"]/option[2]
# ADD TRANSCEIVER
${click_transceiver_from_menu}  xpath=//a[contains(text(),"Transceiver Manager") and @class='dynatree-title']
${transceiver_dropdown}  xpath=//*[@id="ddlTransceiver"]/option[2]
${click_text_part_no}  xpath=//*[@id="txtPartNumber"]
${text_part_no}  006
${submit_button_transceiver}  xpath=//input[@id="btnAssociationSubmit"]
# EDIT TRANSCEIVER
${new_text_part_no}  38
# ADD DRIVE
${click_drive_from_menu}  xpath=//a[contains(text(),"Drive Manager") and @class='dynatree-title']
${add_drive_button}  xpath=//input[@id="btnAddDrive"]
${click_text_part_no}  xpath=//input[@id="txtPartNumber"]
${text_part_no}  028
${click_text_description}  xpath=//input[@id="txtDescription"]
${text_description}  good
${click_marketing_capacity}  xpath=//input[@id="txtMarketingCapacity"]
${text_marketing_capacity}  20
${drive_speed_dropdown}  xpath=//*[@id="ddlDriveSpeed"]/option[2]
${drive_class_dropdown}  xpath=//*[@id="ddlDriveClass"]/option[2]
${marketing_drive_type_dropdown}  xpath=//*[@id="ddlMarketingDriveType"]/option[2]
${form_factor_dropdown}  xpath=//*[@id="ddlFormFactor"]/option[2]
${click_text_interface_speed}  xpath=//input[@id="txtInterfaceSpeed"]
${text_interface_speed}  9
#${shift_select_right_button}  xpath=//*[@id="MainContent_btnShiftSelectedRight"]
${shift_select_right_button_drive}  xpath=//*[@id="btnShiftSelectedRight"]
${save_button}  xpath=//input[@id="btnSave"]
# EDIT DRIVE
${drive_general_data}  xpath=//*[@id="driveGeneralInfo"]
#${edit_drive_data}  xpath=//*[@id="HyperLink1" and .='${tmp_drive_part_no_edit}']
${new_text_description}  good
#${edit_drive_data_text}  E-X4021A-R6
${export_button}  xpath=//input[@id="btnClientExport"]
# ADD FRU
${click_fru_from_menu}  xpath=//a[contains(text(),"Field Replaceable Units") and @class='dynatree-title']
${add_fru_button}  xpath=//input[@id="btnAddFRUInfo"]
${click_text_part_no}  xpath=//input[@id="txtPartNumber"]
${text_part_no}  07
${fru_type_dropdown}  xpath=//*[@id="ddlFRUType"]/option[2]
${click_mfg_part_no}  xpath=//input[@id="txtMfgPartNo"]
${text_mfg_part_no}  3
${shift_select_right_button}  xpath=//input[@id="MainContent_btnShiftSelectedRight"]
${save_fru_details}  xpath=//input[@id="btnSaveFRUDetails"]
# EDIT FRU
#${edit_link_data}  xpath=//*[@class="fruclass" and .='DOC-DE2XXC-SYS-C']
${fru_type_dropdown}  xpath=//*[@id="ddlFRUType"]/option[3]
# FRU MATRIX
${fru_matrix}  xpath=//a[@id="lnkFRUMatrix"]
${platform_compatibility_transceiver}  xpath=//*[@id="MainContent_ucPlatformCompatibility_ddTransceiverCheckList_0"]
${element_checkbox}  xpath=//*[@id="tblMainContainer"]/tbody/tr[1]/td/table/tbody/tr[3]/td[2]/input
# ADD VALUE TO PLATFORM VALUE IN MGMT AGGREGATE
${click_mgmt_aggregate_from_menu}  xpath=//a[contains(text(),"Manage Aggregate & Volume Sizing") and @class='dynatree-title']
${platform_group_dropdown}  xpath=//select[@id="MainContent_ddlPlatformGroup"]/option[@value='AFF A200']
${platform_confg_checkbox}  xpath=//input[@id="MainContent_ddlPlatformConfig_1"]
${next_button_ontap}  xpath=//input[@id="BtnhNextOntap"]
${text_combo_checkbox}  xpath=//*[@id="MainContent_txtCombo"]
${show_button}  xpath=//input[@id="MainContent_BtnhShow"]
${ontab_version_dropdown}  xpath=//*[@id="MainContent_ddlontabversion_1"]
${export_button_mgmt}  xpath=//input[@id="btnhExport"]
# VIEW EXPORT POWER
${click_power_from_menu}  xpath=//a[contains(text(),"Power Management") and @class='dynatree-title']
${click_text_config}  xpath=//input[@id="txtConfigTypeFilter"]
${checklist_text_config}  xpath=//input[@id="chckListConfigTypeFilter_1"]
# VERIFY FILTER
${filter_button}  xpath=//input[@id="btnFilter"]
# USER ADD NEW CONFIG FUNCTIONALITY
${click_text_config_power}  xpath=//*[@id="txtConfiguration"]
${text_config_power}  Add new5
${click_text_config_type_filter}  xpath=//*[@id="txtConfigTypeFilter"]
${checkbox_config_type_filter}  xpath=//*[@id="chckListConfigTypeFilter_1"]
# USER CREATE ALERT BUTTON
${click_alert_from_menu}  xpath=//a[contains(text(),"Alerts") and @class='dynatree-title']
${add_alert_button}  xpath=//input[@id="AddAlertBtn"]
${click_text_alert_name}  xpath=//input[@id="AlertName"]
${text_alert_name}  alert9
${font_name_selection}  xpath=//*[@id="HtmlEditorExtender1FontName"]/option[2]
${content_editable}  xpath=//*[@id="HtmlEditorExtender1_ExtenderContentEditable"]
${text_content}  alert03
${click_start_calendar}  xpath=//input[@id="StartCalendar"]
${selection_date}  xpath=//div[@id="CalendarExtender1_day_1_5"]
${click_end_calendar}  xpath=//input[@id="EndCalendar"]
${selection_date_end}  xpath=//div[@id="CalendarExtender2_day_1_6"]
${transceiver_checklist}  xpath=//*[@id="Applications_ddTransceiverCheckList_0"]
# USER EDIT ALERT
#${edit_alert_data}  xpath=.//table[@id="grdAlerts"]/tbody/tr/td/b[contains(text(),'alert4')]/parent::td/parent::tr/td/a[.="Edit"]
${new_edit_alert_text}  alert004
# USER ADD SWITCH
${click_switch_from_menu}  xpath=//a[contains(text(),"Switch Manager") and @class='dynatree-title']
${add_switch_button}  xpath=//input[@id="btnAddSwitch"]
${switch_general_info}  xpath=//a[@id="switchgeneralInfo"]
${manufacturer_dropdown}  xpath=//*[@id="ddlManufacturer"]/option[3]
${text_part_no}  08
${switch_type_dropdowbn}  xpath=//*[@id="ddlSwitchType"]/option[2]
${click_text_count}  xpath=//input[@id="txtModularSlotsCount"]
${text_count}  2
${click_text_description_switch}  xpath=//textarea[@id="txtPartDescription"]
${text_description}  fair
${click_switch_bundles}  xpath=//a[@id="lnkSwitchBundles"]
${click_switch_modules}  xpath=//a[@id="lnkSwitchModules"]
${add_switch_module}  xpath=//input[@id="addSwitchModule"]
${text_part_no_switch}  010
${click_yes}  xpath=//input[@id="btnYes"]
${label_success}  xpath=//span[@id="lblSaveSuccess"]
${confirm_ok}  xpath=//*[@id="fancyokConfirm_ok"]
# USER EDIT SWITCH MODULE
${grid_switches_edit}  xpath=//*[@id="grdSwitches"]/tbody/tr[6]/td[1]/a
${switch_general_info}  xpath=//*[@id="switchgeneralInfo"]
${text_count_edit}  6

# COMMON
${click_user}  xpath=//input[@id="user"]
${username}  yyyyyyy
${click_pwd}  xpath=//input[@id="password"]
${password}  xxxxxx
${Login_button}  xpath=//input[@type="submit"]
${sign_out_button}  xpath=//a[@id="lnkSignout"]


















