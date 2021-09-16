# The name of this view in Looker is "Es Goods"
view: es_goods {
  view_label: "상품 기본 정보"

  sql_table_name: gurufit_to_looker.es_goods ;;

  #상품번호(PRIMARY KEY)
  dimension: goods_no {
    label: "상품번호"
    primary_key: yes
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  #상품이름
  dimension: goods_nm {
    label: "상품이름"
    type: string
    sql: ${TABLE}.goodsNm ;;
    link: {
      label: "Google Search"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "https://www.google.com/favicon.ico"
    }
  }

  #관심상품 수
  dimension: wish_cnt {
    label: "관심상품수"
    type: number
    sql: ${TABLE}.wish_cnt ;;
  }

  #상품판매 여부(y/n)
  dimension: goods_sell_fl {
    label: "상품판매여부(Y/N)"
    type: string
    sql: ${TABLE}.goodsSellFl ;;
  }

  #조회수
  dimension: hit_cnt {
    label: "조회수"
    type: number
    sql: ${TABLE}.hitCnt ;;
  }

  #장바구니 수
  dimension: cart_cnt {
    label: "장바구니수"
    type: number
    sql: ${TABLE}.cartCnt ;;
  }

  #리뷰수
  dimension: review_cnt {
    label: "리뷰수"
    type: number
    sql: ${TABLE}.reviewCnt ;;
  }

  #브랜드코드
  dimension: brand_cd {
    label: "브랜드코드"
    type: string
    sql: ${TABLE}.brandCd ;;
  }

##############################################################################################
# 판매대금-이익금 계산을 위해 아래의 필드 추가
##############################################################################################

  dimension: brandcate_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.brandcateCd ;;
  }

  dimension: lesmore_dc_rate {
    hidden: yes
    type: number
    sql: ${TABLE}.lesmoreDcRate ;;
  }

  dimension: purchase_no {
    hidden: yes
    type: number
    sql: ${TABLE}.purchaseNo ;;
  }

##############################################################################################
  measure: count {
    label: "count"
    type: count
    drill_fields: [goods_no, goods_nm]
  }

  #총관심상품 수
  measure: total_wish_cnt {
    label: "총관심상품수"
    type: sum
    value_format: "#,##0\" 개\""
    sql: ${wish_cnt} ;;
  }

  measure: total_cart_cnt {
    description: "장바구니 총합수"
    label: "cartcnt"
    type: sum
    value_format: "#,##0\" 개\""
    sql: ${cart_cnt} ;;
  }

  measure: total_review_cnt {
    description: "리뷰 총합수"
    label: "reviewcnt"
    type: sum
    value_format: "#,##0\" 개\""
    sql: ${review_cnt} ;;
  }

  #############################################################################################
}
