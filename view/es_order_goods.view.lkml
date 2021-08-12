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

  dimension: add_goods_cnt {
    type: number
    sql: ${TABLE}.addGoodsCnt ;;
  }

  dimension: add_goods_price {
    type: number
    sql: ${TABLE}.addGoodsPrice ;;
  }

  dimension: api_order_goods_no {
    type: string
    sql: ${TABLE}.apiOrderGoodsNo ;;
  }

  dimension: brand_bank_sale_price {
    type: number
    sql: ${TABLE}.brandBankSalePrice ;;
  }

  dimension: brand_cd {
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: cate_all_cd {
    type: string
    sql: ${TABLE}.cateAllCd ;;
  }

  dimension: cate_cd {
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: checkout_data {
    type: string
    sql: ${TABLE}.checkoutData ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: cost_price {
    type: number
    sql: ${TABLE}.costPrice ;;
  }

  dimension: coupon_goods_dc_price {
    type: number
    sql: ${TABLE}.couponGoodsDcPrice ;;
  }

  dimension: coupon_goods_mileage {
    type: number
    sql: ${TABLE}.couponGoodsMileage ;;
  }

  dimension: coupon_mileage_fl {
    type: string
    sql: ${TABLE}.couponMileageFl ;;
  }

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

  dimension: delivery_log {
    type: string
    sql: ${TABLE}.deliveryLog ;;
  }

  dimension: delivery_method_fl {
    type: string
    sql: ${TABLE}.deliveryMethodFl ;;
  }

  dimension: division_coupon_order_dc_price {
    type: number
    sql: ${TABLE}.divisionCouponOrderDcPrice ;;
  }

  dimension: division_coupon_order_mileage {
    type: number
    sql: ${TABLE}.divisionCouponOrderMileage ;;
  }

  dimension: division_goods_delivery_use_deposit {
    type: number
    sql: ${TABLE}.divisionGoodsDeliveryUseDeposit ;;
  }

  dimension: division_goods_delivery_use_mileage {
    type: number
    sql: ${TABLE}.divisionGoodsDeliveryUseMileage ;;
  }

  dimension: division_use_deposit {
    type: number
    sql: ${TABLE}.divisionUseDeposit ;;
  }

  dimension: division_use_mileage {
    type: number
    sql: ${TABLE}.divisionUseMileage ;;
  }

  dimension: enuri {
    type: number
    sql: ${TABLE}.enuri ;;
  }

  dimension: event_sno {
    type: number
    sql: ${TABLE}.eventSno ;;
  }

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

  dimension: fixed_price {
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  dimension: goods_cd {
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  dimension: goods_cnt {
    type: number
    sql: ${TABLE}.goodsCnt ;;
  }

  dimension: goods_dc_price {
    type: number
    sql: ${TABLE}.goodsDcPrice ;;
  }

  dimension: goods_delivery_collect_fl {
    type: string
    sql: ${TABLE}.goodsDeliveryCollectFl ;;
  }

  dimension: goods_delivery_collect_price {
    type: number
    sql: ${TABLE}.goodsDeliveryCollectPrice ;;
  }

  dimension: goods_discount_info {
    type: string
    sql: ${TABLE}.goodsDiscountInfo ;;
  }

  dimension: goods_mileage {
    type: number
    sql: ${TABLE}.goodsMileage ;;
  }

  dimension: goods_mileage_add_info {
    type: string
    sql: ${TABLE}.goodsMileageAddInfo ;;
  }

  dimension: goods_model_no {
    type: string
    sql: ${TABLE}.goodsModelNo ;;
  }

  dimension: goods_nm {
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  dimension: goods_nm_standard {
    type: string
    sql: ${TABLE}.goodsNmStandard ;;
  }

  dimension: goods_no {
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goods_price {
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  dimension: goods_tax_info {
    type: string
    sql: ${TABLE}.goodsTaxInfo ;;
  }

  dimension: goods_type {
    type: string
    sql: ${TABLE}.goodsType ;;
  }

  dimension: goods_volume {
    type: number
    sql: ${TABLE}.goodsVolume ;;
  }

  dimension: goods_weight {
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  dimension: handle_sno {
    type: number
    sql: ${TABLE}.handleSno ;;
  }

  dimension: hscode {
    type: string
    sql: ${TABLE}.hscode ;;
  }

  dimension: inflow {
    type: string
    sql: ${TABLE}.inflow ;;
  }

  dimension: invoice_company_sno {
    type: number
    sql: ${TABLE}.invoiceCompanySno ;;
  }

  dimension_group: invoice_dt {
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
    sql: ${TABLE}.invoiceDt ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.invoiceNo ;;
  }

  dimension: link_main_theme {
    type: string
    sql: ${TABLE}.linkMainTheme ;;
  }

  dimension: maker_nm {
    type: string
    sql: ${TABLE}.makerNm ;;
  }

  dimension: mall_sno {
    type: number
    sql: ${TABLE}.mallSno ;;
  }

  dimension: member_dc_price {
    type: number
    sql: ${TABLE}.memberDcPrice ;;
  }

  dimension: member_mileage {
    type: number
    sql: ${TABLE}.memberMileage ;;
  }

  dimension: member_overlap_dc_price {
    type: number
    sql: ${TABLE}.memberOverlapDcPrice ;;
  }

  dimension_group: mileage_give_dt {
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
    sql: ${TABLE}.mileageGiveDt ;;
  }

  dimension: minus_deposit_fl {
    type: string
    sql: ${TABLE}.minusDepositFl ;;
  }

  dimension: minus_mileage_fl {
    type: string
    sql: ${TABLE}.minusMileageFl ;;
  }

  dimension: minus_restore_deposit_fl {
    type: string
    sql: ${TABLE}.minusRestoreDepositFl ;;
  }

  dimension: minus_restore_mileage_fl {
    type: string
    sql: ${TABLE}.minusRestoreMileageFl ;;
  }

  dimension: minus_restore_stock_fl {
    type: string
    sql: ${TABLE}.minusRestoreStockFl ;;
  }

  dimension: minus_stock_fl {
    type: string
    sql: ${TABLE}.minusStockFl ;;
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

  dimension: myapp_dc_price {
    type: number
    sql: ${TABLE}.myappDcPrice ;;
  }

  dimension: option_cost_price {
    type: number
    sql: ${TABLE}.optionCostPrice ;;
  }

  dimension: option_info {
    type: string
    sql: ${TABLE}.optionInfo ;;
  }

  dimension: option_price {
    type: number
    sql: ${TABLE}.optionPrice ;;
  }

  dimension: option_sno {
    type: number
    sql: ${TABLE}.optionSno ;;
  }

  dimension: option_text_info {
    type: string
    sql: ${TABLE}.optionTextInfo ;;
  }

  dimension: option_text_price {
    type: number
    sql: ${TABLE}.optionTextPrice ;;
  }

  dimension: order_cd {
    type: number
    sql: ${TABLE}.orderCd ;;
  }

  dimension: order_delivery_sno {
    type: number
    sql: ${TABLE}.orderDeliverySno ;;
  }

  dimension: order_group_cd {
    type: number
    sql: ${TABLE}.orderGroupCd ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  dimension: origin_nm {
    type: string
    sql: ${TABLE}.originNm ;;
  }

  dimension: parent_goods_no {
    type: number
    sql: ${TABLE}.parentGoodsNo ;;
  }

  dimension: parent_must_fl {
    type: string
    sql: ${TABLE}.parentMustFl ;;
  }

  dimension: past_commission {
    type: number
    sql: ${TABLE}.pastCommission ;;
  }

  dimension: past_payout {
    type: number
    sql: ${TABLE}.pastPayout ;;
  }

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

  dimension: payout_month {
    type: string
    sql: ${TABLE}.payoutMonth ;;
  }

  dimension: plus_mileage_fl {
    type: string
    sql: ${TABLE}.plusMileageFl ;;
  }

  dimension: plus_restore_mileage_fl {
    type: string
    sql: ${TABLE}.plusRestoreMileageFl ;;
  }

  dimension: purchase_no {
    type: number
    sql: ${TABLE}.purchaseNo ;;
  }

  dimension: real_tax_free_goods_price {
    type: number
    sql: ${TABLE}.realTaxFreeGoodsPrice ;;
  }

  dimension: real_tax_supply_goods_price {
    type: number
    sql: ${TABLE}.realTaxSupplyGoodsPrice ;;
  }

  dimension: real_tax_vat_goods_price {
    type: number
    sql: ${TABLE}.realTaxVatGoodsPrice ;;
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

  dimension: scm_adjust_after_no {
    type: number
    sql: ${TABLE}.scmAdjustAfterNo ;;
  }

  dimension: scm_adjust_no {
    type: number
    sql: ${TABLE}.scmAdjustNo ;;
  }

  dimension: scm_no {
    type: number
    sql: ${TABLE}.scmNo ;;
  }

  dimension: send_sms_fl {
    type: string
    sql: ${TABLE}.sendSmsFl ;;
  }

  dimension: sno {
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: statistics_goods_fl {
    type: string
    sql: ${TABLE}.statisticsGoodsFl ;;
  }

  dimension: statistics_order_fl {
    type: string
    sql: ${TABLE}.statisticsOrderFl ;;
  }

  dimension: tax_free_goods_price {
    type: number
    sql: ${TABLE}.taxFreeGoodsPrice ;;
  }

  dimension: tax_supply_goods_price {
    type: number
    sql: ${TABLE}.taxSupplyGoodsPrice ;;
  }

  dimension: tax_vat_goods_price {
    type: number
    sql: ${TABLE}.taxVatGoodsPrice ;;
  }

  dimension: time_sale_fl {
    type: string
    sql: ${TABLE}.timeSaleFl ;;
  }

  dimension: time_sale_price {
    type: number
    sql: ${TABLE}.timeSalePrice ;;
  }

  dimension: unstoring {
    type: string
    sql: ${TABLE}.Unstoring ;;
  }

  dimension: user_handle_sno {
    type: number
    sql: ${TABLE}.userHandleSno ;;
  }

  dimension: visit_address {
    type: string
    sql: ${TABLE}.visitAddress ;;
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

  measure: total_add_goods_cnt {
    type: sum
    hidden: yes
    sql: ${add_goods_cnt} ;;
  }

  measure: average_add_goods_cnt {
    type: average
    hidden: yes
    sql: ${add_goods_cnt} ;;
  }

  measure: total_add_goods_price {
    type: sum
    hidden: yes
    sql: ${add_goods_price} ;;
  }

  measure: average_add_goods_price {
    type: average
    hidden: yes
    sql: ${add_goods_price} ;;
  }

  measure: total_brand_bank_sale_price {
    type: sum
    hidden: yes
    sql: ${brand_bank_sale_price} ;;
  }

  measure: average_brand_bank_sale_price {
    type: average
    hidden: yes
    sql: ${brand_bank_sale_price} ;;
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

  measure: total_division_goods_delivery_use_deposit {
    type: sum
    hidden: yes
    sql: ${division_goods_delivery_use_deposit} ;;
  }

  measure: average_division_goods_delivery_use_deposit {
    type: average
    hidden: yes
    sql: ${division_goods_delivery_use_deposit} ;;
  }

  measure: total_division_goods_delivery_use_mileage {
    type: sum
    hidden: yes
    sql: ${division_goods_delivery_use_mileage} ;;
  }

  measure: average_division_goods_delivery_use_mileage {
    type: average
    hidden: yes
    sql: ${division_goods_delivery_use_mileage} ;;
  }

  measure: total_division_use_deposit {
    type: sum
    hidden: yes
    sql: ${division_use_deposit} ;;
  }

  measure: average_division_use_deposit {
    type: average
    hidden: yes
    sql: ${division_use_deposit} ;;
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

  measure: total_event_sno {
    type: sum
    hidden: yes
    sql: ${event_sno} ;;
  }

  measure: average_event_sno {
    type: average
    hidden: yes
    sql: ${event_sno} ;;
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

  measure: total_goods_delivery_collect_price {
    type: sum
    hidden: yes
    sql: ${goods_delivery_collect_price} ;;
  }

  measure: average_goods_delivery_collect_price {
    type: average
    hidden: yes
    sql: ${goods_delivery_collect_price} ;;
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

  measure: total_invoice_company_sno {
    type: sum
    hidden: yes
    sql: ${invoice_company_sno} ;;
  }

  measure: average_invoice_company_sno {
    type: average
    hidden: yes
    sql: ${invoice_company_sno} ;;
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

  measure: total_member_overlap_dc_price {
    type: sum
    hidden: yes
    sql: ${member_overlap_dc_price} ;;
  }

  measure: average_member_overlap_dc_price {
    type: average
    hidden: yes
    sql: ${member_overlap_dc_price} ;;
  }

  measure: total_myapp_dc_price {
    type: sum
    hidden: yes
    sql: ${myapp_dc_price} ;;
  }

  measure: average_myapp_dc_price {
    type: average
    hidden: yes
    sql: ${myapp_dc_price} ;;
  }

  measure: total_option_cost_price {
    type: sum
    hidden: yes
    sql: ${option_cost_price} ;;
  }

  measure: average_option_cost_price {
    type: average
    hidden: yes
    sql: ${option_cost_price} ;;
  }

  measure: total_option_price {
    type: sum
    hidden: yes
    sql: ${option_price} ;;
  }

  measure: average_option_price {
    type: average
    hidden: yes
    sql: ${option_price} ;;
  }

  measure: total_option_sno {
    type: sum
    hidden: yes
    sql: ${option_sno} ;;
  }

  measure: average_option_sno {
    type: average
    hidden: yes
    sql: ${option_sno} ;;
  }

  measure: total_option_text_price {
    type: sum
    hidden: yes
    sql: ${option_text_price} ;;
  }

  measure: average_option_text_price {
    type: average
    hidden: yes
    sql: ${option_text_price} ;;
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

  measure: total_order_delivery_sno {
    type: sum
    hidden: yes
    sql: ${order_delivery_sno} ;;
  }

  measure: average_order_delivery_sno {
    type: average
    hidden: yes
    sql: ${order_delivery_sno} ;;
  }

  measure: total_order_group_cd {
    type: sum
    hidden: yes
    sql: ${order_group_cd} ;;
  }

  measure: average_order_group_cd {
    type: average
    hidden: yes
    sql: ${order_group_cd} ;;
  }

  measure: total_parent_goods_no {
    type: sum
    hidden: yes
    sql: ${parent_goods_no} ;;
  }

  measure: average_parent_goods_no {
    type: average
    hidden: yes
    sql: ${parent_goods_no} ;;
  }

  measure: total_past_commission {
    type: sum
    hidden: yes
    sql: ${past_commission} ;;
  }

  measure: average_past_commission {
    type: average
    hidden: yes
    sql: ${past_commission} ;;
  }

  measure: total_past_payout {
    type: sum
    hidden: yes
    sql: ${past_payout} ;;
  }

  measure: average_past_payout {
    type: average
    hidden: yes
    sql: ${past_payout} ;;
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

  measure: total_real_tax_free_goods_price {
    type: sum
    hidden: yes
    sql: ${real_tax_free_goods_price} ;;
  }

  measure: average_real_tax_free_goods_price {
    type: average
    hidden: yes
    sql: ${real_tax_free_goods_price} ;;
  }

  measure: total_real_tax_supply_goods_price {
    type: sum
    hidden: yes
    sql: ${real_tax_supply_goods_price} ;;
  }

  measure: average_real_tax_supply_goods_price {
    type: average
    hidden: yes
    sql: ${real_tax_supply_goods_price} ;;
  }

  measure: total_real_tax_vat_goods_price {
    type: sum
    hidden: yes
    sql: ${real_tax_vat_goods_price} ;;
  }

  measure: average_real_tax_vat_goods_price {
    type: average
    hidden: yes
    sql: ${real_tax_vat_goods_price} ;;
  }

  measure: total_scm_adjust_after_no {
    type: sum
    hidden: yes
    sql: ${scm_adjust_after_no} ;;
  }

  measure: average_scm_adjust_after_no {
    type: average
    hidden: yes
    sql: ${scm_adjust_after_no} ;;
  }

  measure: total_scm_adjust_no {
    type: sum
    hidden: yes
    sql: ${scm_adjust_no} ;;
  }

  measure: average_scm_adjust_no {
    type: average
    hidden: yes
    sql: ${scm_adjust_no} ;;
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

  measure: total_tax_free_goods_price {
    type: sum
    hidden: yes
    sql: ${tax_free_goods_price} ;;
  }

  measure: average_tax_free_goods_price {
    type: average
    hidden: yes
    sql: ${tax_free_goods_price} ;;
  }

  measure: total_tax_supply_goods_price {
    type: sum
    hidden: yes
    sql: ${tax_supply_goods_price} ;;
  }

  measure: average_tax_supply_goods_price {
    type: average
    hidden: yes
    sql: ${tax_supply_goods_price} ;;
  }

  measure: total_tax_vat_goods_price {
    type: sum
    hidden: yes
    sql: ${tax_vat_goods_price} ;;
  }

  measure: average_tax_vat_goods_price {
    type: average
    hidden: yes
    sql: ${tax_vat_goods_price} ;;
  }

  measure: total_time_sale_price {
    type: sum
    hidden: yes
    sql: ${time_sale_price} ;;
  }

  measure: average_time_sale_price {
    type: average
    hidden: yes
    sql: ${time_sale_price} ;;
  }

  measure: total_user_handle_sno {
    type: sum
    hidden: yes
    sql: ${user_handle_sno} ;;
  }

  measure: average_user_handle_sno {
    type: average
    hidden: yes
    sql: ${user_handle_sno} ;;
  }
}
