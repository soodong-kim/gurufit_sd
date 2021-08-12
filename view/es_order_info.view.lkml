# The name of this view in Looker is "Es Order Info"
view: es_order_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_orderInfo ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Custom ID Number" in Explore.

  dimension: custom_id_number {
    type: string
    sql: ${TABLE}.customIdNumber ;;
  }

  dimension: delivery_visit {
    type: string
    sql: ${TABLE}.deliveryVisit ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: mod_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modDt ;;
  }

  dimension: order_address {
    type: string
    sql: ${TABLE}.orderAddress ;;
  }

  dimension: order_address_sub {
    type: string
    sql: ${TABLE}.orderAddressSub ;;
  }

  dimension: order_cell_phone {
    type: string
    sql: ${TABLE}.orderCellPhone ;;
  }

  dimension: order_cell_phone_prefix {
    type: number
    sql: ${TABLE}.orderCellPhonePrefix ;;
  }

  dimension: order_cell_phone_prefix_code {
    type: string
    sql: ${TABLE}.orderCellPhonePrefixCode ;;
  }

  dimension: order_city {
    type: string
    sql: ${TABLE}.orderCity ;;
  }

  dimension: order_email {
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  dimension: order_info_cd {
    type: yesno
    sql: ${TABLE}.orderInfoCd ;;
  }

  dimension: order_memo {
    type: string
    sql: ${TABLE}.orderMemo ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}.orderName ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: order_phone {
    type: string
    sql: ${TABLE}.orderPhone ;;
  }

  dimension: order_phone_prefix {
    type: number
    sql: ${TABLE}.orderPhonePrefix ;;
  }

  dimension: order_phone_prefix_code {
    type: string
    sql: ${TABLE}.orderPhonePrefixCode ;;
  }

  dimension: order_state {
    type: string
    sql: ${TABLE}.orderState ;;
  }

  dimension: order_zipcode {
    type: string
    sql: ${TABLE}.orderZipcode ;;
  }

  dimension: order_zonecode {
    type: string
    sql: ${TABLE}.orderZonecode ;;
  }

  dimension: packet_code {
    type: string
    sql: ${TABLE}.packetCode ;;
  }

  dimension: receiver_address {
    type: string
    sql: ${TABLE}.receiverAddress ;;
  }

  dimension: receiver_address_sub {
    type: string
    sql: ${TABLE}.receiverAddressSub ;;
  }

  dimension: receiver_cell_phone {
    type: string
    sql: ${TABLE}.receiverCellPhone ;;
  }

  dimension: receiver_cell_phone_prefix {
    type: number
    sql: ${TABLE}.receiverCellPhonePrefix ;;
  }

  dimension: receiver_cell_phone_prefix_code {
    type: string
    sql: ${TABLE}.receiverCellPhonePrefixCode ;;
  }

  dimension: receiver_city {
    type: string
    sql: ${TABLE}.receiverCity ;;
  }

  dimension: receiver_country {
    type: string
    sql: ${TABLE}.receiverCountry ;;
  }

  dimension: receiver_country_code {
    type: string
    sql: ${TABLE}.receiverCountryCode ;;
  }

  dimension: receiver_name {
    type: string
    sql: ${TABLE}.receiverName ;;
  }

  dimension: receiver_phone {
    type: string
    sql: ${TABLE}.receiverPhone ;;
  }

  dimension: receiver_phone_prefix {
    type: number
    sql: ${TABLE}.receiverPhonePrefix ;;
  }

  dimension: receiver_phone_prefix_code {
    type: string
    sql: ${TABLE}.receiverPhonePrefixCode ;;
  }

  dimension: receiver_safe_number {
    type: string
    sql: ${TABLE}.receiverSafeNumber ;;
  }

  dimension_group: receiver_safe_number_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.receiverSafeNumberDt ;;
  }

  dimension: receiver_state {
    type: string
    sql: ${TABLE}.receiverState ;;
  }

  dimension: receiver_use_safe_number_fl {
    type: string
    sql: ${TABLE}.receiverUseSafeNumberFl ;;
  }

  dimension: receiver_zipcode {
    type: string
    sql: ${TABLE}.receiverZipcode ;;
  }

  dimension: receiver_zonecode {
    type: string
    sql: ${TABLE}.receiverZonecode ;;
  }

  dimension_group: reg_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.regDt ;;
  }

  dimension: sms_fl {
    type: string
    sql: ${TABLE}.smsFl ;;
  }

  dimension: sno {
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: visit_address {
    type: string
    sql: ${TABLE}.visitAddress ;;
  }

  dimension: visit_memo {
    type: string
    sql: ${TABLE}.visitMemo ;;
  }

  dimension: visit_name {
    type: string
    sql: ${TABLE}.visitName ;;
  }

  dimension: visit_phone {
    type: string
    sql: ${TABLE}.visitPhone ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [visit_name, order_name, receiver_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_order_cell_phone_prefix {
    type: sum
    hidden: yes
    sql: ${order_cell_phone_prefix} ;;
  }

  measure: average_order_cell_phone_prefix {
    type: average
    hidden: yes
    sql: ${order_cell_phone_prefix} ;;
  }

  measure: total_order_phone_prefix {
    type: sum
    hidden: yes
    sql: ${order_phone_prefix} ;;
  }

  measure: average_order_phone_prefix {
    type: average
    hidden: yes
    sql: ${order_phone_prefix} ;;
  }

  measure: total_receiver_cell_phone_prefix {
    type: sum
    hidden: yes
    sql: ${receiver_cell_phone_prefix} ;;
  }

  measure: average_receiver_cell_phone_prefix {
    type: average
    hidden: yes
    sql: ${receiver_cell_phone_prefix} ;;
  }

  measure: total_receiver_phone_prefix {
    type: sum
    hidden: yes
    sql: ${receiver_phone_prefix} ;;
  }

  measure: average_receiver_phone_prefix {
    type: average
    hidden: yes
    sql: ${receiver_phone_prefix} ;;
  }

  measure: total_sno {
    type: sum
    hidden: yes
    sql: ${sno} ;;
  }

  measure: average_sno {
    type: average
    hidden: yes
    sql: ${sno} ;;
  }
}
