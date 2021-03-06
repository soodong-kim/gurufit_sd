# The name of this view in Looker is "Es Order"
view: es_order {
view_label: "주문서 기본정보"

  sql_table_name: gurufit_to_looker.es_order ;;

  #구매 쿠폰 지급여부
  dimension: event_coupon_fl {
    label: "쿠매쿠폰지급여부"
    type: string
    sql: ${TABLE}.eventCouponFl ;;
  }

  #첫구매 쿠폰 지급여부
  dimension: first_coupon_fl {
    label: "첫구매쿠폰지급여부"
    type: string
    sql: ${TABLE}.firstCouponFl ;;
  }

  #첫 구매여부
  dimension: first_sale_fl {
    label: "첫구매여부"
    type: string
    sql: ${TABLE}.firstSaleFl ;;
  }

  #회원번호
  dimension: mem_no {
    label: "회원번호"
    type: number
    sql: ${TABLE}.memNo ;;
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

  #복수배송지 사용여부
  dimension: multi_shipping_fl {
    label: "복수배송지사용여부"
    type: string
    sql: ${TABLE}.multiShippingFl ;;
  }

  #주문채널
  dimension: order_channel_fl {
    label: "주문채널"
    type: string
    sql: ${TABLE}.orderChannelFl ;;
  }

  #비회원 이메일
  dimension: order_email {
    label: "비회원 E-MAIL"
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  #주문 상품 갯수
  dimension: order_goods_cnt {
    label: "주문상품갯수"
    type: number
    sql: ${TABLE}.orderGoodsCnt ;;
  }

  #주문 상품명
  dimension: order_goods_nm {
    label: "주문상품명"
    type: string
    sql: ${TABLE}.orderGoodsNm ;;
  }

  #주문 상품명(기준월)
  dimension: order_goods_nm_standard {
    label: "주문상품명(기준월)"
    type: string
    sql: ${TABLE}.orderGoodsNmStandard ;;
  }

  #주문자 IP
  dimension: order_ip {
    label: "주문자IP"
    type: string
    sql: ${TABLE}.orderIp ;;
  }

  #주문번호(PRIMARY KEY)
  dimension: order_no {
    label: "주문번호"
    primary_key: yes
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  #주문상태
  dimension: order_status {
    label: "주문상태"
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  #주문유형(모바일,PC,수기)
  dimension: order_type_fl {
    label: "주문유형"
    type: string
    sql: ${TABLE}.orderTypeFl ;;
  }

  #입금일자
  dimension_group: payment_dt {
    label: "입금일자"
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
    label: "영수증신청여부"
    type: string
    sql: ${TABLE}.receiptFl ;;
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

  #메일/SMS 전송여부
  dimension: send_mail_sms_fl {
    label: "메일/sms 전송여부"
    type: string
    sql: ${TABLE}.sendMailSmsFl ;;
  }

  #주문방법
  dimension: settle_kind {
    label: "주문방법"
    type: string
    sql: ${TABLE}.settleKind ;;
  }

  #고객상담메모(관리자용메모)
  dimension: user_consult_memo {
    label: "고객상담메모"
    type: string
    sql: ${TABLE}.userConsultMemo ;;
  }

  #고객요청번호(관리자용메모)
  dimension: user_request_memo {
    label: "고객요청번호"
    type: string
    sql: ${TABLE}.userRequestMemo ;;
  }

##############################################################################################
  measure: count {
    type: count
    label: "count"
    drill_fields: [order_no, order_goods_nm, payment_dt_month]
  }

  measure: total_order_goods_cnt {
    type: sum
    label: "ordergoodscnt"
    hidden: no
    drill_fields: [order_no, order_goods_nm, payment_dt_month]
    sql: ${order_goods_cnt} ;;
  }

  measure: average_order_goods_cnt {
    type: average
    label: "aveordergoodscnt"
    hidden: no
    sql: ${order_goods_cnt} ;;
  }
##############################################################################################
}
