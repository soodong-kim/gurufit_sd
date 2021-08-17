# The name of this view in Looker is "Es Order Goods"
view: es_order_goods {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_orderGoods ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add Goods Cnt" in Explore.


  #주문번호
  dimension: order_no {
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  #주문상태
  dimension: order_status {
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  #일련번호(PRIMARY KEY)
  dimension: sno {
    type: number
    sql: ${TABLE}.sno ;;
  }

  #주문코드(순서)
  dimension: order_cd {
    type: number
    sql: ${TABLE}.orderCd ;;
  }

  #상품수량
  dimension: goods_cnt {
    type: number
    sql: ${TABLE}.goodsCnt ;;
  }

  #브랜드코드
  dimension: brand_cd {
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  #카테고리코드
  dimension: cate_cd {
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  #상품코드
  dimension: goods_cd {
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  #모델명
  dimension: goods_model_no {
    type: string
    sql: ${TABLE}.goodsModelNo ;;
  }

  #상품명
  dimension: goods_nm {
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  #타임세일여부(y/n)
  dimension: time_sale_fl {
    type: string
    sql: ${TABLE}.timeSaleFl ;;
  }

  #기준몰 상품명
  dimension: goods_nm_standard {
    type: string
    sql: ${TABLE}.goodsNmStandard ;;
  }

  #상품번호
  dimension: goods_no {
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  #상품무게
  dimension: goods_weight {
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  #정가
  dimension: fixed_price {
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  #상품가격
  dimension: goods_price {
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  #상품쿠폰 할인금액
  dimension: coupon_goods_dc_price {
    type: number
    sql: ${TABLE}.couponGoodsDcPrice ;;
  }

  #주문할인 금액의 안분된 주문쿠폰
  dimension: division_coupon_order_dc_price {
    type: number
    sql: ${TABLE}.divisionCouponOrderDcPrice ;;
  }

  #주문할인 금액의 안분된 적립금
  dimension: division_use_mileage {
    type: number
    sql: ${TABLE}.divisionUseMileage ;;
  }

  #에누리할인
  dimension: enuri {
    type: number
    sql: ${TABLE}.enuri ;;
  }

  #상품할인금액
  dimension: goods_dc_price {
    type: number
    sql: ${TABLE}.goodsDcPrice ;;
  }

  #회원할인금액
  dimension: member_dc_price {
    type: number
    sql: ${TABLE}.memberDcPrice ;;
  }

  #상품쿠폰적립 적립금
  dimension: coupon_goods_mileage {
    type: number
    sql: ${TABLE}.couponGoodsMileage ;;
  }

  #주문금액의 안분된 적립금
  dimension: division_coupon_order_mileage {
    type: number
    sql: ${TABLE}.divisionCouponOrderMileage ;;
  }

  #상품적립금
  dimension: goods_mileage {
    type: number
    sql: ${TABLE}.goodsMileage ;;
  }

  #회원적립금
  dimension: member_mileage {
    type: number
    sql: ${TABLE}.memberMileage ;;
  }

  #적립금 지급여부
  dimension: plus_mileage_fl {
    type: string
    sql: ${TABLE}.plusMileageFl ;;
  }

  #환불/반품/교환처리 sno
  dimension: handle_sno {
    type: number
    sql: ${TABLE}.handleSno ;;
  }

  #취소완료일자
  dimension_group: cancel_dt {
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
    sql: ${TABLE}.cancelDt ;;
  }

  #배송완료일자
  dimension_group: delivery_complete_dt {
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
    sql: ${TABLE}.deliveryCompleteDt ;;
  }

  #배송일자
  dimension_group: delivery_dt {
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
    sql: ${TABLE}.deliveryDt ;;
  }

  #구매확정일자
  dimension_group: finish_dt {
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
    sql: ${TABLE}.finishDt ;;
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


  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.


  measure: total_coupon_goods_dc_price {
    type: sum
    hidden: yes
    sql: ${coupon_goods_dc_price} ;;
  }

  measure: average_coupon_goods_dc_price {
    type: average
    hidden: yes
    sql: ${coupon_goods_dc_price} ;;
  }

  measure: total_coupon_goods_mileage {
    type: sum
    hidden: yes
    sql: ${coupon_goods_mileage} ;;
  }

  measure: average_coupon_goods_mileage {
    type: average
    hidden: yes
    sql: ${coupon_goods_mileage} ;;
  }

  measure: total_division_coupon_order_dc_price {
    type: sum
    hidden: yes
    sql: ${division_coupon_order_dc_price} ;;
  }

  measure: average_division_coupon_order_dc_price {
    type: average
    hidden: yes
    sql: ${division_coupon_order_dc_price} ;;
  }

  measure: total_division_coupon_order_mileage {
    type: sum
    hidden: yes
    sql: ${division_coupon_order_mileage} ;;
  }

  measure: average_division_coupon_order_mileage {
    type: average
    hidden: yes
    sql: ${division_coupon_order_mileage} ;;
  }


  measure: total_division_use_mileage {
    type: sum
    hidden: yes
    sql: ${division_use_mileage} ;;
  }

  measure: average_division_use_mileage {
    type: average
    hidden: yes
    sql: ${division_use_mileage} ;;
  }

  measure: total_enuri {
    type: sum
    hidden: yes
    sql: ${enuri} ;;
  }

  measure: average_enuri {
    type: average
    hidden: yes
    sql: ${enuri} ;;
  }

  measure: total_fixed_price {
    type: sum
    hidden: yes
    sql: ${fixed_price} ;;
  }

  measure: average_fixed_price {
    type: average
    hidden: yes
    sql: ${fixed_price} ;;
  }

  measure: total_goods_cnt {
    type: sum
    hidden: yes
    sql: ${goods_cnt} ;;
  }

  measure: average_goods_cnt {
    type: average
    hidden: yes
    sql: ${goods_cnt} ;;
  }

  measure: total_goods_dc_price {
    type: sum
    hidden: yes
    sql: ${goods_dc_price} ;;
  }

  measure: average_goods_dc_price {
    type: average
    hidden: yes
    sql: ${goods_dc_price} ;;
  }

  measure: total_goods_mileage {
    type: sum
    hidden: yes
    sql: ${goods_mileage} ;;
  }

  measure: average_goods_mileage {
    type: average
    hidden: yes
    sql: ${goods_mileage} ;;
  }

  measure: total_goods_no {
    type: sum
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: average_goods_no {
    type: average
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: total_goods_price {
    type: sum
    hidden: yes
    sql: ${goods_price} ;;
  }

  measure: average_goods_price {
    type: average
    hidden: yes
    sql: ${goods_price} ;;
  }

  measure: total_goods_weight {
    type: sum
    hidden: yes
    sql: ${goods_weight} ;;
  }

  measure: average_goods_weight {
    type: average
    hidden: yes
    sql: ${goods_weight} ;;
  }

  measure: total_handle_sno {
    type: sum
    hidden: yes
    sql: ${handle_sno} ;;
  }

  measure: average_handle_sno {
    type: average
    hidden: yes
    sql: ${handle_sno} ;;
  }

  measure: total_member_dc_price {
    type: sum
    hidden: yes
    sql: ${member_dc_price} ;;
  }

  measure: average_member_dc_price {
    type: average
    hidden: yes
    sql: ${member_dc_price} ;;
  }

  measure: total_member_mileage {
    type: sum
    hidden: yes
    sql: ${member_mileage} ;;
  }

  measure: average_member_mileage {
    type: average
    hidden: yes
    sql: ${member_mileage} ;;
  }

  measure: total_order_cd {
    type: sum
    hidden: yes
    sql: ${order_cd} ;;
  }

  measure: average_order_cd {
    type: average
    hidden: yes
    sql: ${order_cd} ;;
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
