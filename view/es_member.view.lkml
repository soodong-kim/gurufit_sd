# The name of this view in Looker is "Es Member"
view: es_member {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_member ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address_sub {
    type: string
    sql: ${TABLE}.addressSub ;;
  }

  dimension: admin_memo {
    type: string
    sql: ${TABLE}.adminMemo ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: adult_confirm_dt {
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
    sql: ${TABLE}.adultConfirmDt ;;
  }

  dimension: adult_fl {
    type: string
    sql: ${TABLE}.adultFl ;;
  }

  dimension: app_fl {
    type: string
    sql: ${TABLE}.appFl ;;
  }

  dimension_group: approval_dt {
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
    sql: ${TABLE}.approvalDt ;;
  }

  dimension_group: birth_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthDt ;;
  }

  dimension_group: birth_event_fl {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthEventFl ;;
  }

  dimension: busi_no {
    type: string
    sql: ${TABLE}.busiNo ;;
  }

  dimension: calendar_fl {
    type: string
    sql: ${TABLE}.calendarFl ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  dimension: cell_phone_country_code {
    type: string
    sql: ${TABLE}.cellPhoneCountryCode ;;
  }

  dimension: ceo {
    type: string
    sql: ${TABLE}.ceo ;;
  }

  dimension_group: change_password_dt {
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
    sql: ${TABLE}.changePasswordDt ;;
  }

  dimension: com_address {
    type: string
    sql: ${TABLE}.comAddress ;;
  }

  dimension: com_address_sub {
    type: string
    sql: ${TABLE}.comAddressSub ;;
  }

  dimension: com_zipcode {
    type: string
    sql: ${TABLE}.comZipcode ;;
  }

  dimension: com_zonecode {
    type: string
    sql: ${TABLE}.comZonecode ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }

  dimension: dupeinfo {
    type: string
    sql: ${TABLE}.dupeinfo ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: entry_benefit_offer_dt {
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
    sql: ${TABLE}.entryBenefitOfferDt ;;
  }

  dimension_group: entry_dt {
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
    sql: ${TABLE}.entryDt ;;
  }

  dimension: entry_path {
    type: string
    sql: ${TABLE}.entryPath ;;
  }

  dimension: ex1 {
    type: string
    sql: ${TABLE}.ex1 ;;
  }

  dimension: ex2 {
    type: string
    sql: ${TABLE}.ex2 ;;
  }

  dimension: ex3 {
    type: string
    sql: ${TABLE}.ex3 ;;
  }

  dimension: ex4 {
    type: string
    sql: ${TABLE}.ex4 ;;
  }

  dimension: ex5 {
    type: string
    sql: ${TABLE}.ex5 ;;
  }

  dimension: ex6 {
    type: string
    sql: ${TABLE}.ex6 ;;
  }

  dimension: expiration_fl {
    type: string
    sql: ${TABLE}.expirationFl ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: foreigner {
    type: string
    sql: ${TABLE}.foreigner ;;
  }

  dimension_group: group_mod_dt {
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
    sql: ${TABLE}.groupModDt ;;
  }

  dimension: group_sno {
    type: number
    sql: ${TABLE}.groupSno ;;
  }

  dimension_group: group_valid_dt {
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
    sql: ${TABLE}.groupValidDt ;;
  }

  dimension_group: guide_password_dt {
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
    sql: ${TABLE}.guidePasswordDt ;;
  }

  dimension: interest {
    type: string
    sql: ${TABLE}.interest ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension_group: last_login_dt {
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
    sql: ${TABLE}.lastLoginDt ;;
  }

  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.lastLoginIp ;;
  }

  dimension_group: last_sale_dt {
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
    sql: ${TABLE}.lastSaleDt ;;
  }

  dimension_group: life_member_conversion_dt {
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
    sql: ${TABLE}.lifeMemberConversionDt ;;
  }

  dimension: login_cnt {
    type: number
    sql: ${TABLE}.loginCnt ;;
  }

  dimension: login_limit {
    type: string
    sql: ${TABLE}.loginLimit ;;
  }

  dimension: mailling_fl {
    type: string
    sql: ${TABLE}.maillingFl ;;
  }

  dimension: mall_sno {
    type: number
    sql: ${TABLE}.mallSno ;;
  }

  dimension_group: marri {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.marriDate ;;
  }

  dimension: marri_fl {
    type: string
    sql: ${TABLE}.marriFl ;;
  }

  dimension: mem_id {
    type: string
    sql: ${TABLE}.memId ;;
  }

  dimension: mem_nm {
    type: string
    sql: ${TABLE}.memNm ;;
  }

  dimension: mem_no {
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: mem_pw {
    type: string
    sql: ${TABLE}.memPw ;;
  }

  dimension: member_fl {
    type: string
    sql: ${TABLE}.memberFl ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: mileage {
    type: number
    sql: ${TABLE}.mileage ;;
  }

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

  dimension: nick_nm {
    type: string
    sql: ${TABLE}.nickNm ;;
  }

  dimension: pakey {
    type: string
    sql: ${TABLE}.pakey ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_country_code {
    type: string
    sql: ${TABLE}.phoneCountryCode ;;
  }

  dimension: private_approval_fl {
    type: string
    sql: ${TABLE}.privateApprovalFl ;;
  }

  dimension: private_approval_option_fl {
    type: string
    sql: ${TABLE}.privateApprovalOptionFl ;;
  }

  dimension: private_consign_fl {
    type: string
    sql: ${TABLE}.privateConsignFl ;;
  }

  dimension: private_offer_fl {
    type: string
    sql: ${TABLE}.privateOfferFl ;;
  }

  dimension: pronounce_name {
    type: string
    sql: ${TABLE}.pronounceName ;;
  }

  dimension: re_entry_fl {
    type: string
    sql: ${TABLE}.reEntryFl ;;
  }

  dimension: recomm_fl {
    type: string
    sql: ${TABLE}.recommFl ;;
  }

  dimension: recomm_id {
    type: string
    sql: ${TABLE}.recommId ;;
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

  dimension: rncheck {
    type: string
    sql: ${TABLE}.rncheck ;;
  }

  dimension: sale_amt {
    type: number
    sql: ${TABLE}.saleAmt ;;
  }

  dimension: sale_cnt {
    type: number
    sql: ${TABLE}.saleCnt ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: sex_fl {
    type: string
    sql: ${TABLE}.sexFl ;;
  }

  dimension: simple_join_fl {
    type: string
    sql: ${TABLE}.simpleJoinFl ;;
  }

  dimension: sleep_fl {
    type: string
    sql: ${TABLE}.sleepFl ;;
  }

  dimension: sleep_mail_fl {
    type: string
    sql: ${TABLE}.sleepMailFl ;;
  }

  dimension: sleep_sms_fl {
    type: string
    sql: ${TABLE}.sleepSmsFl ;;
  }

  dimension_group: sleep_wake_dt {
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
    sql: ${TABLE}.sleepWakeDt ;;
  }

  dimension: sms_fl {
    type: string
    sql: ${TABLE}.smsFl ;;
  }

  dimension: under14_consent_fl {
    type: string
    sql: ${TABLE}.under14ConsentFl ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zonecode {
    type: string
    sql: ${TABLE}.zonecode ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [pronounce_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_deposit {
    type: sum
    hidden: yes
    sql: ${deposit} ;;
  }

  measure: average_deposit {
    type: average
    hidden: yes
    sql: ${deposit} ;;
  }

  measure: total_group_sno {
    type: sum
    hidden: yes
    sql: ${group_sno} ;;
  }

  measure: average_group_sno {
    type: average
    hidden: yes
    sql: ${group_sno} ;;
  }

  measure: total_login_cnt {
    type: sum
    hidden: yes
    sql: ${login_cnt} ;;
  }

  measure: average_login_cnt {
    type: average
    hidden: yes
    sql: ${login_cnt} ;;
  }

  measure: total_mall_sno {
    type: sum
    hidden: yes
    sql: ${mall_sno} ;;
  }

  measure: average_mall_sno {
    type: average
    hidden: yes
    sql: ${mall_sno} ;;
  }

  measure: total_mem_no {
    type: sum
    hidden: yes
    sql: ${mem_no} ;;
  }

  measure: average_mem_no {
    type: average
    hidden: yes
    sql: ${mem_no} ;;
  }

  measure: total_mileage {
    type: sum
    hidden: yes
    sql: ${mileage} ;;
  }

  measure: average_mileage {
    type: average
    hidden: yes
    sql: ${mileage} ;;
  }

  measure: total_sale_amt {
    type: sum
    hidden: yes
    sql: ${sale_amt} ;;
  }

  measure: average_sale_amt {
    type: average
    hidden: yes
    sql: ${sale_amt} ;;
  }

  measure: total_sale_cnt {
    type: sum
    hidden: yes
    sql: ${sale_cnt} ;;
  }

  measure: average_sale_cnt {
    type: average
    hidden: yes
    sql: ${sale_cnt} ;;
  }
}
