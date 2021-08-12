# The name of this view in Looker is "Es Goods"
view: es_goods {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_goods ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add Goods" in Explore.

  dimension: add_goods {
    type: string
    sql: ${TABLE}.addGoods ;;
  }

  dimension: add_goods_fl {
    type: string
    sql: ${TABLE}.addGoodsFl ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: apply_dt {
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
    sql: ${TABLE}.applyDt ;;
  }

  dimension: apply_fl {
    type: string
    sql: ${TABLE}.applyFl ;;
  }

  dimension: apply_msg {
    type: string
    sql: ${TABLE}.applyMsg ;;
  }

  dimension: apply_type {
    type: string
    sql: ${TABLE}.applyType ;;
  }

  dimension: benefit_use_type {
    type: string
    sql: ${TABLE}.benefitUseType ;;
  }

  dimension: brand_cd {
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  dimension: brandcate_cd {
    type: string
    sql: ${TABLE}.brandcateCd ;;
  }

  dimension: cart_cnt {
    type: number
    sql: ${TABLE}.cartCnt ;;
  }

  dimension: cate_cd {
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: cost_price {
    type: number
    sql: ${TABLE}.costPrice ;;
  }

  dimension: crema_review_cnt {
    type: number
    sql: ${TABLE}.cremaReviewCnt ;;
  }

  dimension: culture_benefit_fl {
    type: string
    sql: ${TABLE}.cultureBenefitFl ;;
  }

  dimension: daum_fl {
    type: string
    sql: ${TABLE}.daumFl ;;
  }

  dimension: db_dc_rate {
    type: number
    sql: ${TABLE}.dbDcRate ;;
  }

  dimension_group: del_dt {
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
    sql: ${TABLE}.delDt ;;
  }

  dimension: del_fl {
    type: string
    sql: ${TABLE}.delFl ;;
  }

  dimension: delivery_sno {
    type: number
    sql: ${TABLE}.deliverySno ;;
  }

  dimension: detail_info_as {
    type: string
    sql: ${TABLE}.detailInfoAS ;;
  }

  dimension: detail_info_asdirect_input {
    type: string
    sql: ${TABLE}.detailInfoASDirectInput ;;
  }

  dimension: detail_info_asfl {
    type: string
    sql: ${TABLE}.detailInfoASFl ;;
  }

  dimension: detail_info_delivery {
    type: string
    sql: ${TABLE}.detailInfoDelivery ;;
  }

  dimension: detail_info_delivery_direct_input {
    type: string
    sql: ${TABLE}.detailInfoDeliveryDirectInput ;;
  }

  dimension: detail_info_delivery_fl {
    type: string
    sql: ${TABLE}.detailInfoDeliveryFl ;;
  }

  dimension: detail_info_exchange {
    type: string
    sql: ${TABLE}.detailInfoExchange ;;
  }

  dimension: detail_info_exchange_direct_input {
    type: string
    sql: ${TABLE}.detailInfoExchangeDirectInput ;;
  }

  dimension: detail_info_exchange_fl {
    type: string
    sql: ${TABLE}.detailInfoExchangeFl ;;
  }

  dimension: detail_info_refund {
    type: string
    sql: ${TABLE}.detailInfoRefund ;;
  }

  dimension: detail_info_refund_direct_input {
    type: string
    sql: ${TABLE}.detailInfoRefundDirectInput ;;
  }

  dimension: detail_info_refund_fl {
    type: string
    sql: ${TABLE}.detailInfoRefundFl ;;
  }

  dimension_group: effective_end_ymd {
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
    sql: ${TABLE}.effectiveEndYmd ;;
  }

  dimension_group: effective_start_ymd {
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
    sql: ${TABLE}.effectiveStartYmd ;;
  }

  dimension: event_description {
    type: string
    sql: ${TABLE}.eventDescription ;;
  }

  dimension: excel_fl {
    type: string
    sql: ${TABLE}.excelFl ;;
  }

  dimension: except_benefit {
    type: string
    sql: ${TABLE}.exceptBenefit ;;
  }

  dimension: except_benefit_group {
    type: string
    sql: ${TABLE}.exceptBenefitGroup ;;
  }

  dimension: except_benefit_group_info {
    type: string
    sql: ${TABLE}.exceptBenefitGroupInfo ;;
  }

  dimension: external_video_fl {
    type: string
    sql: ${TABLE}.externalVideoFl ;;
  }

  dimension: external_video_height {
    type: number
    sql: ${TABLE}.externalVideoHeight ;;
  }

  dimension: external_video_url {
    type: string
    sql: ${TABLE}.externalVideoUrl ;;
  }

  dimension: external_video_width {
    type: number
    sql: ${TABLE}.externalVideoWidth ;;
  }

  dimension: fixed_goods_discount {
    type: string
    sql: ${TABLE}.fixedGoodsDiscount ;;
  }

  dimension: fixed_order_cnt {
    type: string
    sql: ${TABLE}.fixedOrderCnt ;;
  }

  dimension: fixed_price {
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  dimension: fixed_sales {
    type: string
    sql: ${TABLE}.fixedSales ;;
  }

  dimension: goods_access {
    type: string
    sql: ${TABLE}.goodsAccess ;;
  }

  dimension: goods_access_display_fl {
    type: string
    sql: ${TABLE}.goodsAccessDisplayFl ;;
  }

  dimension: goods_access_group {
    type: string
    sql: ${TABLE}.goodsAccessGroup ;;
  }

  dimension: goods_benefit_set_fl {
    type: string
    sql: ${TABLE}.goodsBenefitSetFl ;;
  }

  dimension: goods_cd {
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  dimension: goods_color {
    type: string
    sql: ${TABLE}.goodsColor ;;
  }

  dimension: goods_description {
    type: string
    sql: ${TABLE}.goodsDescription ;;
  }

  dimension: goods_description_mobile {
    type: string
    sql: ${TABLE}.goodsDescriptionMobile ;;
  }

  dimension: goods_description_same_fl {
    type: string
    sql: ${TABLE}.goodsDescriptionSameFl ;;
  }

  dimension: goods_discount {
    type: number
    sql: ${TABLE}.goodsDiscount ;;
  }

  dimension: goods_discount_fl {
    type: string
    sql: ${TABLE}.goodsDiscountFl ;;
  }

  dimension: goods_discount_group {
    type: string
    sql: ${TABLE}.goodsDiscountGroup ;;
  }

  dimension: goods_discount_group_member_info {
    type: string
    sql: ${TABLE}.goodsDiscountGroupMemberInfo ;;
  }

  dimension: goods_discount_unit {
    type: string
    sql: ${TABLE}.goodsDiscountUnit ;;
  }

  dimension: goods_display_fl {
    type: string
    sql: ${TABLE}.goodsDisplayFl ;;
  }

  dimension: goods_display_mobile_fl {
    type: string
    sql: ${TABLE}.goodsDisplayMobileFl ;;
  }

  dimension: goods_icon_cd {
    type: string
    sql: ${TABLE}.goodsIconCd ;;
  }

  dimension: goods_icon_cd_period {
    type: string
    sql: ${TABLE}.goodsIconCdPeriod ;;
  }

  dimension_group: goods_icon_end_ymd {
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
    sql: ${TABLE}.goodsIconEndYmd ;;
  }

  dimension_group: goods_icon_start_ymd {
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
    sql: ${TABLE}.goodsIconStartYmd ;;
  }

  dimension: goods_model_no {
    type: string
    sql: ${TABLE}.goodsModelNo ;;
  }

  dimension: goods_must_info {
    type: string
    sql: ${TABLE}.goodsMustInfo ;;
  }

  dimension: goods_nm {
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  dimension: goods_nm_detail {
    type: string
    sql: ${TABLE}.goodsNmDetail ;;
  }

  dimension: goods_nm_fl {
    type: string
    sql: ${TABLE}.goodsNmFl ;;
  }

  dimension: goods_nm_list {
    type: string
    sql: ${TABLE}.goodsNmList ;;
  }

  dimension: goods_nm_main {
    type: string
    sql: ${TABLE}.goodsNmMain ;;
  }

  dimension: goods_nm_partner {
    type: string
    sql: ${TABLE}.goodsNmPartner ;;
  }

  dimension: goods_no {
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension_group: goods_open_dt {
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
    sql: ${TABLE}.goodsOpenDt ;;
  }

  dimension: goods_permission {
    type: string
    sql: ${TABLE}.goodsPermission ;;
  }

  dimension: goods_permission_group {
    type: string
    sql: ${TABLE}.goodsPermissionGroup ;;
  }

  dimension: goods_permission_price_string {
    type: string
    sql: ${TABLE}.goodsPermissionPriceString ;;
  }

  dimension: goods_permission_price_string_fl {
    type: string
    sql: ${TABLE}.goodsPermissionPriceStringFl ;;
  }

  dimension: goods_price {
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  dimension: goods_price_string {
    type: string
    sql: ${TABLE}.goodsPriceString ;;
  }

  dimension: goods_search_word {
    type: string
    sql: ${TABLE}.goodsSearchWord ;;
  }

  dimension: goods_sell_fl {
    type: string
    sql: ${TABLE}.goodsSellFl ;;
  }

  dimension: goods_sell_mobile_fl {
    type: string
    sql: ${TABLE}.goodsSellMobileFl ;;
  }

  dimension: goods_state {
    type: string
    sql: ${TABLE}.goodsState ;;
  }

  dimension: goods_volume {
    type: number
    sql: ${TABLE}.goodsVolume ;;
  }

  dimension: goods_weight {
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  dimension: group_model_name {
    type: string
    sql: ${TABLE}.groupModelName ;;
  }

  dimension: hit_cnt {
    type: number
    sql: ${TABLE}.hitCnt ;;
  }

  dimension: hscode {
    type: string
    sql: ${TABLE}.hscode ;;
  }

  dimension: image_path {
    type: string
    sql: ${TABLE}.imagePath ;;
  }

  dimension: image_storage {
    type: string
    sql: ${TABLE}.imageStorage ;;
  }

  dimension: img_detail_view_fl {
    type: string
    sql: ${TABLE}.imgDetailViewFl ;;
  }

  dimension: kcmark_info {
    type: string
    sql: ${TABLE}.kcmarkInfo ;;
  }

  dimension_group: launch_ymd {
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
    sql: ${TABLE}.launchYmd ;;
  }

  dimension: lesmore_dc_rate {
    type: number
    sql: ${TABLE}.lesmoreDcRate ;;
  }

  dimension_group: make_ymd {
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
    sql: ${TABLE}.makeYmd ;;
  }

  dimension: maker_nm {
    type: string
    sql: ${TABLE}.makerNm ;;
  }

  dimension: max_order_cnt {
    type: number
    sql: ${TABLE}.maxOrderCnt ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: mileage_fl {
    type: string
    sql: ${TABLE}.mileageFl ;;
  }

  dimension: mileage_goods {
    type: number
    sql: ${TABLE}.mileageGoods ;;
  }

  dimension: mileage_goods_unit {
    type: string
    sql: ${TABLE}.mileageGoodsUnit ;;
  }

  dimension: mileage_group {
    type: string
    sql: ${TABLE}.mileageGroup ;;
  }

  dimension: mileage_group_info {
    type: string
    sql: ${TABLE}.mileageGroupInfo ;;
  }

  dimension: mileage_group_member_info {
    type: string
    sql: ${TABLE}.mileageGroupMemberInfo ;;
  }

  dimension: min_order_cnt {
    type: number
    sql: ${TABLE}.minOrderCnt ;;
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

  dimension: naver_age_group {
    type: string
    sql: ${TABLE}.naverAgeGroup ;;
  }

  dimension: naver_attribute {
    type: string
    sql: ${TABLE}.naverAttribute ;;
  }

  dimension: naver_category {
    type: string
    sql: ${TABLE}.naverCategory ;;
  }

  dimension: naver_fl {
    type: string
    sql: ${TABLE}.naverFl ;;
  }

  dimension: naver_gender {
    type: string
    sql: ${TABLE}.naverGender ;;
  }

  dimension: naver_import_flag {
    type: string
    sql: ${TABLE}.naverImportFlag ;;
  }

  dimension: naver_product_flag {
    type: string
    sql: ${TABLE}.naverProductFlag ;;
  }

  dimension: naver_product_id {
    type: string
    sql: ${TABLE}.naverProductId ;;
  }

  dimension: naver_send_fl {
    type: string
    sql: ${TABLE}.naverSendFl ;;
  }

  dimension: naver_tag {
    type: string
    sql: ${TABLE}.naverTag ;;
  }

  dimension: new_goods_date {
    type: number
    sql: ${TABLE}.newGoodsDate ;;
  }

  dimension: new_goods_date_fl {
    type: string
    sql: ${TABLE}.newGoodsDateFl ;;
  }

  dimension: new_goods_reg_fl {
    type: string
    sql: ${TABLE}.newGoodsRegFl ;;
  }

  dimension: only_adult_display_fl {
    type: string
    sql: ${TABLE}.onlyAdultDisplayFl ;;
  }

  dimension: only_adult_fl {
    type: string
    sql: ${TABLE}.onlyAdultFl ;;
  }

  dimension: only_adult_image_fl {
    type: string
    sql: ${TABLE}.onlyAdultImageFl ;;
  }

  dimension: option_display_fl {
    type: string
    sql: ${TABLE}.optionDisplayFl ;;
  }

  dimension: option_fl {
    type: string
    sql: ${TABLE}.optionFl ;;
  }

  dimension: option_image_display_fl {
    type: string
    sql: ${TABLE}.optionImageDisplayFl ;;
  }

  dimension: option_image_preview_fl {
    type: string
    sql: ${TABLE}.optionImagePreviewFl ;;
  }

  dimension: option_name {
    type: string
    sql: ${TABLE}.optionName ;;
  }

  dimension: option_text_fl {
    type: string
    sql: ${TABLE}.optionTextFl ;;
  }

  dimension: order_cnt {
    type: number
    sql: ${TABLE}.orderCnt ;;
  }

  dimension: order_goods_cnt {
    type: number
    sql: ${TABLE}.orderGoodsCnt ;;
  }

  dimension: origin_nm {
    type: string
    sql: ${TABLE}.originNm ;;
  }

  dimension: pay_limit {
    type: string
    sql: ${TABLE}.payLimit ;;
  }

  dimension: pay_limit_fl {
    type: string
    sql: ${TABLE}.payLimitFl ;;
  }

  dimension: payco_fl {
    type: string
    sql: ${TABLE}.paycoFl ;;
  }

  dimension_group: period_discount_end {
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
    sql: ${TABLE}.periodDiscountEnd ;;
  }

  dimension_group: period_discount_start {
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
    sql: ${TABLE}.periodDiscountStart ;;
  }

  dimension: plus_review_cnt {
    type: number
    sql: ${TABLE}.plusReviewCnt ;;
  }

  dimension: purchase_goods_nm {
    type: string
    sql: ${TABLE}.purchaseGoodsNm ;;
  }

  dimension: purchase_no {
    type: number
    sql: ${TABLE}.purchaseNo ;;
  }

  dimension: qr_code_fl {
    type: string
    sql: ${TABLE}.qrCodeFl ;;
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

  dimension: relation_cnt {
    type: yesno
    sql: ${TABLE}.relationCnt ;;
  }

  dimension: relation_fl {
    type: string
    sql: ${TABLE}.relationFl ;;
  }

  dimension: relation_goods_date {
    type: string
    sql: ${TABLE}.relationGoodsDate ;;
  }

  dimension: relation_goods_each {
    type: string
    sql: ${TABLE}.relationGoodsEach ;;
  }

  dimension: relation_goods_no {
    type: string
    sql: ${TABLE}.relationGoodsNo ;;
  }

  dimension: relation_same_fl {
    type: string
    sql: ${TABLE}.relationSameFl ;;
  }

  dimension: restock_fl {
    type: string
    sql: ${TABLE}.restockFl ;;
  }

  dimension: review_cnt {
    type: number
    sql: ${TABLE}.reviewCnt ;;
  }

  dimension_group: sales_end_ymd {
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
    sql: ${TABLE}.salesEndYmd ;;
  }

  dimension_group: sales_start_ymd {
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
    sql: ${TABLE}.salesStartYmd ;;
  }

  dimension: sales_unit {
    type: number
    sql: ${TABLE}.salesUnit ;;
  }

  dimension: scm_no {
    type: number
    sql: ${TABLE}.scmNo ;;
  }

  dimension: seo_tag_fl {
    type: string
    sql: ${TABLE}.seoTagFl ;;
  }

  dimension: seo_tag_sno {
    type: number
    sql: ${TABLE}.seoTagSno ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.shortDescription ;;
  }

  dimension: sold_out_fl {
    type: string
    sql: ${TABLE}.soldOutFl ;;
  }

  dimension: stock_fl {
    type: string
    sql: ${TABLE}.stockFl ;;
  }

  dimension: tax_free_fl {
    type: string
    sql: ${TABLE}.taxFreeFl ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.taxPercent ;;
  }

  dimension: total_stock {
    type: number
    sql: ${TABLE}.totalStock ;;
  }

  dimension: wish_cnt {
    type: number
    sql: ${TABLE}.wishCnt ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [option_name, group_model_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_cart_cnt {
    type: sum
    hidden: yes
    sql: ${cart_cnt} ;;
  }

  measure: average_cart_cnt {
    type: average
    hidden: yes
    sql: ${cart_cnt} ;;
  }

  measure: total_commission {
    type: sum
    hidden: yes
    sql: ${commission} ;;
  }

  measure: average_commission {
    type: average
    hidden: yes
    sql: ${commission} ;;
  }

  measure: total_cost_price {
    type: sum
    hidden: yes
    sql: ${cost_price} ;;
  }

  measure: average_cost_price {
    type: average
    hidden: yes
    sql: ${cost_price} ;;
  }

  measure: total_crema_review_cnt {
    type: sum
    hidden: yes
    sql: ${crema_review_cnt} ;;
  }

  measure: average_crema_review_cnt {
    type: average
    hidden: yes
    sql: ${crema_review_cnt} ;;
  }

  measure: total_db_dc_rate {
    type: sum
    hidden: yes
    sql: ${db_dc_rate} ;;
  }

  measure: average_db_dc_rate {
    type: average
    hidden: yes
    sql: ${db_dc_rate} ;;
  }

  measure: total_delivery_sno {
    type: sum
    hidden: yes
    sql: ${delivery_sno} ;;
  }

  measure: average_delivery_sno {
    type: average
    hidden: yes
    sql: ${delivery_sno} ;;
  }

  measure: total_external_video_height {
    type: sum
    hidden: yes
    sql: ${external_video_height} ;;
  }

  measure: average_external_video_height {
    type: average
    hidden: yes
    sql: ${external_video_height} ;;
  }

  measure: total_external_video_width {
    type: sum
    hidden: yes
    sql: ${external_video_width} ;;
  }

  measure: average_external_video_width {
    type: average
    hidden: yes
    sql: ${external_video_width} ;;
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

  measure: total_goods_discount {
    type: sum
    hidden: yes
    sql: ${goods_discount} ;;
  }

  measure: average_goods_discount {
    type: average
    hidden: yes
    sql: ${goods_discount} ;;
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

  measure: total_goods_volume {
    type: sum
    hidden: yes
    sql: ${goods_volume} ;;
  }

  measure: average_goods_volume {
    type: average
    hidden: yes
    sql: ${goods_volume} ;;
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

  measure: total_hit_cnt {
    type: sum
    hidden: yes
    sql: ${hit_cnt} ;;
  }

  measure: average_hit_cnt {
    type: average
    hidden: yes
    sql: ${hit_cnt} ;;
  }

  measure: total_lesmore_dc_rate {
    type: sum
    hidden: yes
    sql: ${lesmore_dc_rate} ;;
  }

  measure: average_lesmore_dc_rate {
    type: average
    hidden: yes
    sql: ${lesmore_dc_rate} ;;
  }

  measure: total_max_order_cnt {
    type: sum
    hidden: yes
    sql: ${max_order_cnt} ;;
  }

  measure: average_max_order_cnt {
    type: average
    hidden: yes
    sql: ${max_order_cnt} ;;
  }

  measure: total_mileage_goods {
    type: sum
    hidden: yes
    sql: ${mileage_goods} ;;
  }

  measure: average_mileage_goods {
    type: average
    hidden: yes
    sql: ${mileage_goods} ;;
  }

  measure: total_min_order_cnt {
    type: sum
    hidden: yes
    sql: ${min_order_cnt} ;;
  }

  measure: average_min_order_cnt {
    type: average
    hidden: yes
    sql: ${min_order_cnt} ;;
  }

  measure: total_new_goods_date {
    type: sum
    hidden: yes
    sql: ${new_goods_date} ;;
  }

  measure: average_new_goods_date {
    type: average
    hidden: yes
    sql: ${new_goods_date} ;;
  }

  measure: total_order_cnt {
    type: sum
    hidden: yes
    sql: ${order_cnt} ;;
  }

  measure: average_order_cnt {
    type: average
    hidden: yes
    sql: ${order_cnt} ;;
  }

  measure: total_order_goods_cnt {
    type: sum
    hidden: yes
    sql: ${order_goods_cnt} ;;
  }

  measure: average_order_goods_cnt {
    type: average
    hidden: yes
    sql: ${order_goods_cnt} ;;
  }

  measure: total_plus_review_cnt {
    type: sum
    hidden: yes
    sql: ${plus_review_cnt} ;;
  }

  measure: average_plus_review_cnt {
    type: average
    hidden: yes
    sql: ${plus_review_cnt} ;;
  }

  measure: total_purchase_no {
    type: sum
    hidden: yes
    sql: ${purchase_no} ;;
  }

  measure: average_purchase_no {
    type: average
    hidden: yes
    sql: ${purchase_no} ;;
  }

  measure: total_review_cnt {
    type: sum
    hidden: yes
    sql: ${review_cnt} ;;
  }

  measure: average_review_cnt {
    type: average
    hidden: yes
    sql: ${review_cnt} ;;
  }

  measure: total_sales_unit {
    type: sum
    hidden: yes
    sql: ${sales_unit} ;;
  }

  measure: average_sales_unit {
    type: average
    hidden: yes
    sql: ${sales_unit} ;;
  }

  measure: total_scm_no {
    type: sum
    hidden: yes
    sql: ${scm_no} ;;
  }

  measure: average_scm_no {
    type: average
    hidden: yes
    sql: ${scm_no} ;;
  }

  measure: total_seo_tag_sno {
    type: sum
    hidden: yes
    sql: ${seo_tag_sno} ;;
  }

  measure: average_seo_tag_sno {
    type: average
    hidden: yes
    sql: ${seo_tag_sno} ;;
  }

  measure: total_tax_percent {
    type: sum
    hidden: yes
    sql: ${tax_percent} ;;
  }

  measure: average_tax_percent {
    type: average
    hidden: yes
    sql: ${tax_percent} ;;
  }

  measure: total_total_stock {
    type: sum
    hidden: yes
    sql: ${total_stock} ;;
  }

  measure: average_total_stock {
    type: average
    hidden: yes
    sql: ${total_stock} ;;
  }

  measure: total_wish_cnt {
    type: sum
    hidden: yes
    sql: ${wish_cnt} ;;
  }

  measure: average_wish_cnt {
    type: average
    hidden: yes
    sql: ${wish_cnt} ;;
  }
}
