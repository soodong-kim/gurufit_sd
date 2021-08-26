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
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  #주문상태
  dimension: order_status {
    label: "주문상태"
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  #일련번호(PRIMARY KEY)
  dimension: sno {
    label: "일련번호"
    primary_key: yes
    type: number
    sql: ${TABLE}.sno ;;
  }

  #주문코드(순서)
  dimension: order_cd {
    label: "주문코드"
    type: number
    sql: ${TABLE}.orderCd ;;
  }

  #상품수량
  dimension: goods_cnt {
    label: "상품수량"
    type: number
    sql: ${TABLE}.goodsCnt ;;
  }

  #브랜드코드
  dimension: brand_cd {
    label: "브랜드코드"
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  #카테고리코드
  dimension: cate_cd {
    label: "카테고리코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  #상품코드
  dimension: goods_cd {
    label: "상품코드"
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  #모델명
  dimension: goods_model_no {
    label: "모델명"
    type: string
    sql: ${TABLE}.goodsModelNo ;;
  }

  #상품명
  dimension: goods_nm {
    label: "상품명"
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  #타임세일여부(y/n)
  dimension: time_sale_fl {
    label: "타임세일여부(Y/N)"
    type: string
    sql: ${TABLE}.timeSaleFl ;;
  }

  #기준몰 상품명
  dimension: goods_nm_standard {
    label: "기준몰상품명"
    type: string
    sql: ${TABLE}.goodsNmStandard ;;
  }

  #상품번호
  dimension: goods_no {
    label: "상품번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  #상품무게
  dimension: goods_weight {
    label: "상품무게"
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  #정가
  dimension: fixed_price {
    label: "정가"
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  #상품가격
  dimension: goods_price {
    label: "상품가격"
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  #상품쿠폰 할인금액
  dimension: coupon_goods_dc_price {
    label: "상품쿠폰할인금액"
    type: number
    sql: ${TABLE}.couponGoodsDcPrice ;;
  }

  #주문할인 금액의 안분된 주문쿠폰
  dimension: division_coupon_order_dc_price {
    label: "할인안분된주문쿠폰"
    type: number
    sql: ${TABLE}.divisionCouponOrderDcPrice ;;
  }

  #주문할인 금액의 안분된 적립금
  dimension: division_use_mileage {
    label: "할인안분된적립금"
    type: number
    sql: ${TABLE}.divisionUseMileage ;;
  }

  #에누리할인
  dimension: enuri {
    label: "에누리할인"
    type: number
    sql: ${TABLE}.enuri ;;
  }

  #상품할인금액
  dimension: goods_dc_price {
    label: "상품할인금액"
    type: number
    sql: ${TABLE}.goodsDcPrice ;;
  }

  #회원할인금액
  dimension: member_dc_price {
    label: "회원할인금액"
    type: number
    sql: ${TABLE}.memberDcPrice ;;
  }

  #상품쿠폰적립 적립금
  dimension: coupon_goods_mileage {
    label: "상품쿠폰적립금"
    type: number
    sql: ${TABLE}.couponGoodsMileage ;;
  }

  #주문금액의 안분된 적립금
  dimension: division_coupon_order_mileage {
    label: "안분된적립금"
    type: number
    sql: ${TABLE}.divisionCouponOrderMileage ;;
  }

  #상품적립금
  dimension: goods_mileage {
    label: "상품적립금"
    type: number
    sql: ${TABLE}.goodsMileage ;;
  }

  #회원적립금
  dimension: member_mileage {
    label: "회원적립금"
    type: number
    sql: ${TABLE}.memberMileage ;;
  }

  #적립금 지급여부
  dimension: plus_mileage_fl {
    label: "적립금지급여부"
    type: string
    sql: ${TABLE}.plusMileageFl ;;
  }

  #환불/반품/교환처리 sno
  dimension: handle_sno {
    label: "환불/반품/교환처리"
    type: number
    sql: ${TABLE}.handleSno ;;
  }

  #취소완료일자
  dimension_group: cancel_dt {
    label: "취소완료일자"
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
    label: "배송완료일자"
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
    label: "배송일자"
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
    label: "구매확정일자"
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

  #입금일자 : payment_dt
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
      year,
      hour,
      hour_of_day
    ]
    sql: ${TABLE}.paymentDt ;;
  }



##############################################################################################
# 판매대금-이익금 계산을 위해 아래의 필드 추가
# 1. 기본 할인 금액 -> basic_dc_price
# 2. 타임세일 할인 금액 -> timesale_dc_price
# 3. 이익금 = 순매출 - 아래의 판매대금(fee_price) - PG 수수료
##############################################################################################
  # group_label: "주문 정보"
  dimension: order_type {
    description: "주문 유형(일반/교환)"
    type: string
    sql:
    case when ${handle_sno}>0 and ${order_status} in ("p1","g1","d1","d2","s1") then "교환"
    else "일반"
    end;;
  }

  #금액정보
  dimension: netSales_price {
    label: "금액정보"
    description: "금액정보"
    value_format : "0"
    #value_format_name: ko_KR
    type: number
    sql:  case when ( ${goods_price}  - ${enuri} - ${member_dc_price} - ${division_use_mileage} - ${division_coupon_order_dc_price} - ${coupon_goods_dc_price} ) > 0
         then ${goods_price}  - ${enuri} - ${member_dc_price} - ${division_use_mileage} - ${division_coupon_order_dc_price} - ${coupon_goods_dc_price}
         else 0 end;;
  }

  #순매출
  dimension: sunSales_price {
    label: "순매출"
    type: number
    value_format : "0"
    #value_format_name: ko_KR
    sql: case when ${order_status} in ('p1','g1','d1','d2','s1','b3','b1','b2','b4','r2','r1','z1','z2','z3','z4','z5','e1','e2','e3','e4','e5') and (${order_status}  in ('d1','d2','g1','p1','s1') and ${handle_sno} < 0 - (${order_type}='일반'))
                     THEN ${goods_price} - IFNULL(${enuri},0) - IFNULL(${member_dc_price},0) - IFNULL(${division_use_mileage} ,0) - IFNULL(${division_coupon_order_dc_price} ,0) - IFNULL(${coupon_goods_dc_price},0)
                     else 0 end ;;
  }

  dimension: fee_price {
    label: "판매대금"
    description: "판매대금"
    value_format : "0"
    #value_format_name: ko_KR
    type: number
    sql:
    if((${order_status} in ("p1","g1","d1","d2","s1","b3","b1","b2","b4","r2","r1","e1","e2","e3","e4","e5")) and (${order_type}='일반'),
    case
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} < '2019-09-01'
    then ${fixed_price}*0.55
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} >= '2019-09-01'
    then ${fixed_price}*0.52
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} < TIMESTAMP('2019-12-31 08:00')
    then ${fixed_price}*0.5
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} >= TIMESTAMP('2019-12-31 08:00')
    then ${fixed_price}*0.47
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} < TIMESTAMP('2019-10-31 08:00')
    then ${fixed_price}*0.35
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} >= TIMESTAMP('2019-10-31 08:00')
    then ${fixed_price}*0.25
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} < '2019-09-01'
    then ${fixed_price}*0.35
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} >= '2019-09-01'
    then ${fixed_price}*0.36
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} < TIMESTAMP('2019-12-31 08:00')
    then ${fixed_price}*0.3
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} >= TIMESTAMP('2019-12-31 08:00')
     then ${fixed_price}*0.27
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} < TIMESTAMP('2019-10-31 08:00')
    then ${fixed_price}*0.2
    when ${es_goods.purchase_no}='100009' and ${es_goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour}>= TIMESTAMP('2019-10-31 08:00')
    then ${fixed_price}*0.15
    when ${es_goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}<0.1
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.7
    when ${es_goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}>=0.1 and ${dc_price_rate_hidden}<0.2
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.725
    when ${es_goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}>=0.2
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.75
    when ${es_goods.purchase_no}='100005' and ${dc_price_rate_hidden}<=0.2
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.7
    when ${es_goods.purchase_no}='100005' and ${dc_price_rate_hidden}>0.2 and ${dc_price_rate_hidden}<=0.4
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.72
    when ${es_goods.purchase_no}='100005' and ${dc_price_rate_hidden}>0.4
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.75
    when ${es_goods.purchase_no} in ('100010','100004','100014','100015')
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.7
    when ${es_goods.purchase_no}='100006'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.72
    when ${es_goods.purchase_no}='100008'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.45
    when ${es_goods.purchase_no}='100011'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.75
    when ${es_goods.purchase_no}='100012'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.70
    when ${es_goods.purchase_no}='100013'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.78
    when ${es_goods.purchase_no}='100021'
    then (${goods_price}-${division_coupon_order_dc_price}-${coupon_goods_dc_price})*0.6
    else null
    end,
    null);;
  }

  #PG 수수료
  dimension: pg_price {
    label: "PG수수료"
    value_format : "0"
    #value_format_name: ko_KR
    type: number
    sql: ${netSales_price} * 0.028 ;;
  }

  #이익금
  dimension: profit_price {
    label: "이익금"
    value_format : "0"
    #value_format_name: ko_KR
    type: number
    sql: ${sunSales_price} - ${fee_price} - ${pg_price} ;;
  }


  #기본할인금액
  dimension: basic_dc_price {
    description: "기본할인금액"
    value_format : "0"
    #value_format_name: ko_KR
    type: number
    sql: case when ${time_sale_fl} = "N" then ${fixed_price} - ${goods_price}  else 0 end;;
  }


  #타임세일할인금액
  dimension: timesale_dc_price {
  description: "타임세일할인금액"
  value_format : "0"
  #value_format_name: ko_KR
  type: number
  sql: case when ${time_sale_fl} = "Y" then ${fixed_price} - ${goods_price}  else 0 end;;
  }

  #할인금액(에누리할인 + 타임세일할인금액 + 회원할인금액 + 주문할인금액의안분된 적립금 + 주문할인금액의안분된 주문쿠폰 + 상품쿠폰 할인금액 + 기존 할인 금액
  dimension: discount_price{
  label: "할인금액"
  value_format : "0"
  #value_format_name: ko_KR
  type: number
  sql: ${enuri} +  ${timesale_dc_price} + ${member_dc_price} + ${division_use_mileage} + ${division_coupon_order_dc_price} + ${coupon_goods_dc_price} + ${basic_dc_price};;
  }


 dimension: dc_price_rate_hidden {
  hidden: yes
  description: "이익률 산출용 할인률"
  type: number
  sql:
    case when ${es_goods.purchase_no}='100009'
    then ${es_goods.lesmore_dc_rate}/100
    when ${es_goods.purchase_no} in ('100003','100004','100005','100006','100007','100008','100010','100011','100012','100013','100014','100015')
    then (${coupon_goods_dc_price}+${division_coupon_order_dc_price}+${basic_dc_price}+${timesale_dc_price})/${fixed_price}
    when ${es_goods.purchase_no}='100001'
    then (${coupon_goods_dc_price}+${division_coupon_order_dc_price}+${basic_dc_price}+${timesale_dc_price}+${division_use_mileage})/${fixed_price}
    else null
    end;;
}

dimension: payment_dt_hour_tier {
  hidden: yes
  description: "주문 시간 Tier"
  type: string
  sql: case when ${payment_dt_hour_of_day}>=1 and ${payment_dt_hour_of_day}<=6 then "1새벽(1~6)"
      when ${payment_dt_hour_of_day}>=7 and ${payment_dt_hour_of_day}<=12 then "2오전(7~12)"
      when ${payment_dt_hour_of_day}>=13 and ${payment_dt_hour_of_day}<=18 then "3오후(13~~18)"
      when (${payment_dt_hour_of_day}>=19 and ${payment_dt_hour_of_day}<=23) or ${payment_dt_hour_of_day}=0 then "4저녁(19~24)"
    else "5알수없음"
    end;;
}
##############################################################################################
  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_netSales_price {
    label: "총금액정보"
    type: sum
    value_format: "#,##0\" 원\""
    sql:  ${netSales_price};;
  }


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
