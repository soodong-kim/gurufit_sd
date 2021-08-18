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


  #일련번호(PRIMARY KEY)
  dimension: sno {
    label: "일련번호"
    type: number
    sql: ${TABLE}.sno ;;
  }

  #주문번호
  dimension: order_no {
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  #주문시 남기는 글
  dimension: order_memo {
    label: "주문시남기는글"
    type: string
    sql: ${TABLE}.orderMemo ;;
  }

  #묶음배송코드
  dimension: packet_code {
    label: "묶음배송코드"
    type: string
    sql: ${TABLE}.packetCode ;;
  }

  #주문자 핸드폰번호
  dimension: order_cell_phone {
    label: "주문자핸드폰번호"
    type: string
    sql: ${TABLE}.orderCellPhone ;;
  }

  #주문자 E-MAIL
  dimension: order_email {
    label: "주문자 E-MAIL"
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  #주문자이름
  dimension: order_name {
    label: "주문자이름"
    type: string
    sql: ${TABLE}.orderName ;;
  }

  #주문자 전화번호
  dimension: order_phone {
    label: "주문자전화번호"
    type: string
    sql: ${TABLE}.orderPhone ;;
  }

  #주문자주소
  dimension: order_address {
    label: "주문자주소"
    type: string
    sql: ${TABLE}.orderAddress ;;
  }

  #주문자 나머지주소
  dimension: order_address_sub {
    label: "나머지주소"
    type: string
    sql: ${TABLE}.orderAddressSub ;;
  }

  #주문자 도시
  dimension: order_city {
    label: "도시"
    type: string
    sql: ${TABLE}.orderCity ;;
  }

  #주문자 우편번호
  dimension: order_zipcode {
    label: "우편번호"
    type: string
    sql: ${TABLE}.orderZipcode ;;
  }

  #주문자 우편번호(10자리)
  dimension: order_zonecode {
    label: "우편번호(10자리)"
    type: string
    sql: ${TABLE}.orderZonecode ;;
  }

  #주문자 주/지방/지역
  dimension: order_state {
    label: "주/지방/지역"
    type: string
    sql: ${TABLE}.orderState ;;
  }

  #수취인 안심번호 사용여부(n:미사용, y:사용, w:발급대기, c:사용해지)
  dimension: receiver_use_safe_number_fl {
    label: "안심번호사용여부"
    type: string
    sql: ${TABLE}.receiverUseSafeNumberFl ;;
  }

  #수취인 핸드폰 번호
  dimension: receiver_cell_phone {
    label: "수취인핸드폰번호"
    type: string
    sql: ${TABLE}.receiverCellPhone ;;
  }

  #수취인 이름
  dimension: receiver_name {
    label: "수취인이름"
    type: string
    sql: ${TABLE}.receiverName ;;
  }

  #수취인 전화번호
  dimension: receiver_phone {
    label: "수취인전화번호"
    type: string
    sql: ${TABLE}.receiverPhone ;;
  }

  #수취인 안심번호
  dimension: receiver_safe_number {
    label: "수취인안심번호"
    type: string
    sql: ${TABLE}.receiverSafeNumber ;;
  }

  #수취인 주소
  dimension: receiver_address {
    label: "수취인주소"
    type: string
    sql: ${TABLE}.receiverAddress ;;
  }

  #수취인 상세주소
  dimension: receiver_address_sub {
    label: "수취인상세주소"
    type: string
    sql: ${TABLE}.receiverAddressSub ;;
  }

  #수취인 우편번호
  dimension: receiver_zipcode {
    label: "수취인우편번호"
    type: string
    sql: ${TABLE}.receiverZipcode ;;
  }

  #수취인 우편번호(10자리)
  dimension: receiver_zonecode {
    label: "수취인우편번호(10자리)"
    type: string
    sql: ${TABLE}.receiverZonecode ;;
  }

  #수취인 도시
  dimension: receiver_city {
    label: "수취인도시"
    type: string
    sql: ${TABLE}.receiverCity ;;
  }

  #수취인 주/지방/지역
  dimension: receiver_state {
    label: "수취인 주/지방/지역"
    type: string
    sql: ${TABLE}.receiverState ;;
  }

  #수정일
  dimension_group: mod_dt {
    label: "수정일"
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

  #수취인 안심번호 발급일자
  dimension_group: receiver_safe_number_dt {
    label: "수취인안심번호발급일자"
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

  #등록일
  dimension_group: reg_dt {
    label: "등록일"
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



  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [order_name, receiver_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.
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
