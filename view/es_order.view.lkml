# The name of this view in Looker is "Es Order"
view: es_order {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_order ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add Field" in Explore.

  #구매 쿠폰 지급여부
  dimension: event_coupon_fl {
    type: string
    sql: ${TABLE}.eventCouponFl ;;
  }

  #첫구매 쿠폰 지급여부
  dimension: first_coupon_fl {
    type: string
    sql: ${TABLE}.firstCouponFl ;;
  }

  #첫 구매여부
  dimension: first_sale_fl {
    type: string
    sql: ${TABLE}.firstSaleFl ;;
  }

  #회원번호
  dimension: mem_no {
    type: number
    sql: ${TABLE}.memNo ;;
  }

  #수정일
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

  #복수배송지 사용여부
  dimension: multi_shipping_fl {
    type: string
    sql: ${TABLE}.multiShippingFl ;;
  }

  #주문채널
  dimension: order_channel_fl {
    type: string
    sql: ${TABLE}.orderChannelFl ;;
  }

  #비회원 이메일
  dimension: order_email {
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  #주문 상품 갯수
  dimension: order_goods_cnt {
    type: number
    sql: ${TABLE}.orderGoodsCnt ;;
  }

  #주문 상품명
  dimension: order_goods_nm {
    type: string
    sql: ${TABLE}.orderGoodsNm ;;
  }

  #주문 상품명(기준월)
  dimension: order_goods_nm_standard {
    type: string
    sql: ${TABLE}.orderGoodsNmStandard ;;
  }

  #주문자 IP
  dimension: order_ip {
    type: string
    sql: ${TABLE}.orderIp ;;
  }

  #주문번호(PRIMARY KEY)
  dimension: order_no {
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  #주문상태
  dimension: order_status {
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  #주문유형(모바일,PC,수기)
  dimension: order_type_fl {
    type: string
    sql: ${TABLE}.orderTypeFl ;;
  }

  #입금일자
  dimension_group: payment_dt {
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
    sql: ${TABLE}.paymentDt ;;
  }

  #영수증 신청여부
  dimension: receipt_fl {
    type: string
    sql: ${TABLE}.receiptFl ;;
  }

  #등록일
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

  #메일/SMS 전송여부
  dimension: send_mail_sms_fl {
    type: string
    sql: ${TABLE}.sendMailSmsFl ;;
  }

  #주문방법
  dimension: settle_kind {
    type: string
    sql: ${TABLE}.settleKind ;;
  }

  #고객상담메모(관리자용메모)
  dimension: user_consult_memo {
    type: string
    sql: ${TABLE}.userConsultMemo ;;
  }

  #고객요청번호(관리자용메모)
  dimension: user_request_memo {
    type: string
    sql: ${TABLE}.userRequestMemo ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_mem_no {
    type: sum
    hidden: no
    sql: ${mem_no} ;;
  }

  measure: average_mem_no {
    type: average
    hidden: no
    sql: ${mem_no} ;;
  }

  measure: total_order_goods_cnt {
    type: sum
    hidden: no
    sql: ${order_goods_cnt} ;;
  }

  measure: average_order_goods_cnt {
    type: average
    hidden: no
    sql: ${order_goods_cnt} ;;
  }

}
