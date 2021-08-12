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

  dimension: add_field {
    type: string
    sql: ${TABLE}.addField ;;
  }

  dimension: admin_memo {
    type: string
    sql: ${TABLE}.adminMemo ;;
  }

  dimension: api_order_no {
    type: string
    sql: ${TABLE}.apiOrderNo ;;
  }

  dimension: app_os {
    type: string
    sql: ${TABLE}.appOs ;;
  }

  dimension: bank_account {
    type: string
    sql: ${TABLE}.bankAccount ;;
  }

  dimension: bank_sender {
    type: string
    sql: ${TABLE}.bankSender ;;
  }

  dimension: bankda_manual_fl {
    type: string
    sql: ${TABLE}.bankdaManualFl ;;
  }

  dimension: bankda_manual_manger_id {
    type: string
    sql: ${TABLE}.bankdaManualMangerId ;;
  }

  dimension: bankda_manual_no {
    type: string
    sql: ${TABLE}.bankdaManualNo ;;
  }

  dimension: checkout_data {
    type: string
    sql: ${TABLE}.checkoutData ;;
  }

  dimension: checksum_data {
    type: string
    sql: ${TABLE}.checksumData ;;
  }

  dimension: coupon_policy {
    type: string
    sql: ${TABLE}.couponPolicy ;;
  }

  dimension: currency_policy {
    type: string
    sql: ${TABLE}.currencyPolicy ;;
  }

  dimension: deposit_policy {
    type: string
    sql: ${TABLE}.depositPolicy ;;
  }

  dimension: escrow_confirm_fl {
    type: string
    sql: ${TABLE}.escrowConfirmFl ;;
  }

  dimension: escrow_delivery_cd {
    type: string
    sql: ${TABLE}.escrowDeliveryCd ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: escrow_delivery_dt {
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
    sql: ${TABLE}.escrowDeliveryDt ;;
  }

  dimension: escrow_delivery_fl {
    type: string
    sql: ${TABLE}.escrowDeliveryFl ;;
  }

  dimension: escrow_deny_fl {
    type: string
    sql: ${TABLE}.escrowDenyFl ;;
  }

  dimension: escrow_invoice_no {
    type: string
    sql: ${TABLE}.escrowInvoiceNo ;;
  }

  dimension: escrow_send_no {
    type: string
    sql: ${TABLE}.escrowSendNo ;;
  }

  dimension: event_coupon_fl {
    type: string
    sql: ${TABLE}.eventCouponFl ;;
  }

  dimension: exchange_rate_policy {
    type: string
    sql: ${TABLE}.exchangeRatePolicy ;;
  }

  dimension: fintech_data {
    type: string
    sql: ${TABLE}.fintechData ;;
  }

  dimension: first_coupon_fl {
    type: string
    sql: ${TABLE}.firstCouponFl ;;
  }

  dimension: first_sale_fl {
    type: string
    sql: ${TABLE}.firstSaleFl ;;
  }

  dimension: mall_sno {
    type: number
    sql: ${TABLE}.mallSno ;;
  }

  dimension: mem_no {
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: member_policy {
    type: string
    sql: ${TABLE}.memberPolicy ;;
  }

  dimension: mileage_give_exclude {
    type: string
    sql: ${TABLE}.mileageGiveExclude ;;
  }

  dimension: mileage_policy {
    type: string
    sql: ${TABLE}.mileagePolicy ;;
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

  dimension: multi_shipping_fl {
    type: string
    sql: ${TABLE}.multiShippingFl ;;
  }

  dimension: myapp_policy {
    type: string
    sql: ${TABLE}.myappPolicy ;;
  }

  dimension: order_admin_log {
    type: string
    sql: ${TABLE}.orderAdminLog ;;
  }

  dimension: order_channel_fl {
    type: string
    sql: ${TABLE}.orderChannelFl ;;
  }

  dimension: order_delivery_log {
    type: string
    sql: ${TABLE}.orderDeliveryLog ;;
  }

  dimension: order_email {
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  dimension: order_goods_cnt {
    type: number
    sql: ${TABLE}.orderGoodsCnt ;;
  }

  dimension: order_goods_nm {
    type: string
    sql: ${TABLE}.orderGoodsNm ;;
  }

  dimension: order_goods_nm_standard {
    type: string
    sql: ${TABLE}.orderGoodsNmStandard ;;
  }

  dimension: order_ip {
    type: string
    sql: ${TABLE}.orderIp ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: order_pglog {
    type: string
    sql: ${TABLE}.orderPGLog ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  dimension: order_type_fl {
    type: string
    sql: ${TABLE}.orderTypeFl ;;
  }

  dimension: overseas_settle_currency {
    type: string
    sql: ${TABLE}.overseasSettleCurrency ;;
  }

  dimension: overseas_settle_price {
    type: number
    sql: ${TABLE}.overseasSettlePrice ;;
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

  dimension: pg_app_dt {
    type: string
    sql: ${TABLE}.pgAppDt ;;
  }

  dimension: pg_app_no {
    type: string
    sql: ${TABLE}.pgAppNo ;;
  }

  dimension: pg_cancel_fl {
    type: string
    sql: ${TABLE}.pgCancelFl ;;
  }

  dimension: pg_card_cd {
    type: string
    sql: ${TABLE}.pgCardCd ;;
  }

  dimension: pg_fail_reason {
    type: string
    sql: ${TABLE}.pgFailReason ;;
  }

  dimension: pg_name {
    type: string
    sql: ${TABLE}.pgName ;;
  }

  dimension: pg_real_tax_free_price {
    type: number
    sql: ${TABLE}.pgRealTaxFreePrice ;;
  }

  dimension: pg_real_tax_supply_price {
    type: number
    sql: ${TABLE}.pgRealTaxSupplyPrice ;;
  }

  dimension: pg_real_tax_vat_price {
    type: number
    sql: ${TABLE}.pgRealTaxVatPrice ;;
  }

  dimension: pg_result_code {
    type: string
    sql: ${TABLE}.pgResultCode ;;
  }

  dimension: pg_settle_cd {
    type: string
    sql: ${TABLE}.pgSettleCd ;;
  }

  dimension: pg_settle_nm {
    type: string
    sql: ${TABLE}.pgSettleNm ;;
  }

  dimension: pg_tid {
    type: string
    sql: ${TABLE}.pgTid ;;
  }

  dimension: push_code {
    type: string
    sql: ${TABLE}.pushCode ;;
  }

  dimension: real_tax_free_price {
    type: number
    sql: ${TABLE}.realTaxFreePrice ;;
  }

  dimension: real_tax_supply_price {
    type: number
    sql: ${TABLE}.realTaxSupplyPrice ;;
  }

  dimension: real_tax_vat_price {
    type: number
    sql: ${TABLE}.realTaxVatPrice ;;
  }

  dimension: receipt_fl {
    type: string
    sql: ${TABLE}.receiptFl ;;
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

  dimension: send_mail_sms_fl {
    type: string
    sql: ${TABLE}.sendMailSmsFl ;;
  }

  dimension: settle_kind {
    type: string
    sql: ${TABLE}.settleKind ;;
  }

  dimension: settle_price {
    type: number
    sql: ${TABLE}.settlePrice ;;
  }

  dimension: statistics_app_order_cnt_fl {
    type: string
    sql: ${TABLE}.statisticsAppOrderCntFl ;;
  }

  dimension: status_policy {
    type: string
    sql: ${TABLE}.statusPolicy ;;
  }

  dimension: tax_free_price {
    type: number
    sql: ${TABLE}.taxFreePrice ;;
  }

  dimension: tax_supply_price {
    type: number
    sql: ${TABLE}.taxSupplyPrice ;;
  }

  dimension: tax_vat_price {
    type: number
    sql: ${TABLE}.taxVatPrice ;;
  }

  dimension: total_coupon_delivery_dc_price {
    type: number
    sql: ${TABLE}.totalCouponDeliveryDcPrice ;;
  }

  dimension: total_coupon_goods_dc_price {
    type: number
    sql: ${TABLE}.totalCouponGoodsDcPrice ;;
  }

  dimension: total_coupon_goods_mileage {
    type: number
    sql: ${TABLE}.totalCouponGoodsMileage ;;
  }

  dimension: total_coupon_order_dc_price {
    type: number
    sql: ${TABLE}.totalCouponOrderDcPrice ;;
  }

  dimension: total_coupon_order_mileage {
    type: number
    sql: ${TABLE}.totalCouponOrderMileage ;;
  }

  dimension: total_delivery_charge {
    type: number
    sql: ${TABLE}.totalDeliveryCharge ;;
  }

  dimension: total_delivery_insurance_fee {
    type: number
    sql: ${TABLE}.totalDeliveryInsuranceFee ;;
  }

  dimension: total_delivery_weight {
    type: number
    sql: ${TABLE}.totalDeliveryWeight ;;
  }

  dimension: total_enuri_dc_price {
    type: number
    sql: ${TABLE}.totalEnuriDcPrice ;;
  }

  dimension: total_goods_dc_price {
    type: number
    sql: ${TABLE}.totalGoodsDcPrice ;;
  }

  dimension: total_goods_mileage {
    type: number
    sql: ${TABLE}.totalGoodsMileage ;;
  }

  dimension: total_goods_price {
    type: number
    sql: ${TABLE}.totalGoodsPrice ;;
  }

  dimension: total_member_bank_dc_price {
    type: number
    sql: ${TABLE}.totalMemberBankDcPrice ;;
  }

  dimension: total_member_dc_price {
    type: number
    sql: ${TABLE}.totalMemberDcPrice ;;
  }

  dimension: total_member_delivery_dc_price {
    type: number
    sql: ${TABLE}.totalMemberDeliveryDcPrice ;;
  }

  dimension: total_member_mileage {
    type: number
    sql: ${TABLE}.totalMemberMileage ;;
  }

  dimension: total_member_overlap_dc_price {
    type: number
    sql: ${TABLE}.totalMemberOverlapDcPrice ;;
  }

  dimension: total_mileage {
    type: number
    sql: ${TABLE}.totalMileage ;;
  }

  dimension: total_myapp_dc_price {
    type: number
    sql: ${TABLE}.totalMyappDcPrice ;;
  }

  dimension: tracking_key {
    type: string
    sql: ${TABLE}.trackingKey ;;
  }

  dimension: use_deposit {
    type: number
    sql: ${TABLE}.useDeposit ;;
  }

  dimension: use_mileage {
    type: number
    sql: ${TABLE}.useMileage ;;
  }

  dimension: user_consult_memo {
    type: string
    sql: ${TABLE}.userConsultMemo ;;
  }

  dimension: user_handle_process {
    type: string
    sql: ${TABLE}.userHandleProcess ;;
  }

  dimension: user_request_memo {
    type: string
    sql: ${TABLE}.userRequestMemo ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [pg_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

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

  measure: total_overseas_settle_price {
    type: sum
    hidden: yes
    sql: ${overseas_settle_price} ;;
  }

  measure: average_overseas_settle_price {
    type: average
    hidden: yes
    sql: ${overseas_settle_price} ;;
  }

  measure: total_pg_real_tax_free_price {
    type: sum
    hidden: yes
    sql: ${pg_real_tax_free_price} ;;
  }

  measure: average_pg_real_tax_free_price {
    type: average
    hidden: yes
    sql: ${pg_real_tax_free_price} ;;
  }

  measure: total_pg_real_tax_supply_price {
    type: sum
    hidden: yes
    sql: ${pg_real_tax_supply_price} ;;
  }

  measure: average_pg_real_tax_supply_price {
    type: average
    hidden: yes
    sql: ${pg_real_tax_supply_price} ;;
  }

  measure: total_pg_real_tax_vat_price {
    type: sum
    hidden: yes
    sql: ${pg_real_tax_vat_price} ;;
  }

  measure: average_pg_real_tax_vat_price {
    type: average
    hidden: yes
    sql: ${pg_real_tax_vat_price} ;;
  }

  measure: total_real_tax_free_price {
    type: sum
    hidden: yes
    sql: ${real_tax_free_price} ;;
  }

  measure: average_real_tax_free_price {
    type: average
    hidden: yes
    sql: ${real_tax_free_price} ;;
  }

  measure: total_real_tax_supply_price {
    type: sum
    hidden: yes
    sql: ${real_tax_supply_price} ;;
  }

  measure: average_real_tax_supply_price {
    type: average
    hidden: yes
    sql: ${real_tax_supply_price} ;;
  }

  measure: total_real_tax_vat_price {
    type: sum
    hidden: yes
    sql: ${real_tax_vat_price} ;;
  }

  measure: average_real_tax_vat_price {
    type: average
    hidden: yes
    sql: ${real_tax_vat_price} ;;
  }

  measure: total_settle_price {
    type: sum
    hidden: yes
    sql: ${settle_price} ;;
  }

  measure: average_settle_price {
    type: average
    hidden: yes
    sql: ${settle_price} ;;
  }

  measure: total_tax_free_price {
    type: sum
    hidden: yes
    sql: ${tax_free_price} ;;
  }

  measure: average_tax_free_price {
    type: average
    hidden: yes
    sql: ${tax_free_price} ;;
  }

  measure: total_tax_supply_price {
    type: sum
    hidden: yes
    sql: ${tax_supply_price} ;;
  }

  measure: average_tax_supply_price {
    type: average
    hidden: yes
    sql: ${tax_supply_price} ;;
  }

  measure: total_tax_vat_price {
    type: sum
    hidden: yes
    sql: ${tax_vat_price} ;;
  }

  measure: average_tax_vat_price {
    type: average
    hidden: yes
    sql: ${tax_vat_price} ;;
  }

  measure: total_total_coupon_delivery_dc_price {
    type: sum
    hidden: yes
    sql: ${total_coupon_delivery_dc_price} ;;
  }

  measure: average_total_coupon_delivery_dc_price {
    type: average
    hidden: yes
    sql: ${total_coupon_delivery_dc_price} ;;
  }

  measure: total_total_coupon_goods_dc_price {
    type: sum
    hidden: yes
    sql: ${total_coupon_goods_dc_price} ;;
  }

  measure: average_total_coupon_goods_dc_price {
    type: average
    hidden: yes
    sql: ${total_coupon_goods_dc_price} ;;
  }

  measure: total_total_coupon_goods_mileage {
    type: sum
    hidden: yes
    sql: ${total_coupon_goods_mileage} ;;
  }

  measure: average_total_coupon_goods_mileage {
    type: average
    hidden: yes
    sql: ${total_coupon_goods_mileage} ;;
  }

  measure: total_total_coupon_order_dc_price {
    type: sum
    hidden: yes
    sql: ${total_coupon_order_dc_price} ;;
  }

  measure: average_total_coupon_order_dc_price {
    type: average
    hidden: yes
    sql: ${total_coupon_order_dc_price} ;;
  }

  measure: total_total_coupon_order_mileage {
    type: sum
    hidden: yes
    sql: ${total_coupon_order_mileage} ;;
  }

  measure: average_total_coupon_order_mileage {
    type: average
    hidden: yes
    sql: ${total_coupon_order_mileage} ;;
  }

  measure: total_total_delivery_charge {
    type: sum
    hidden: yes
    sql: ${total_delivery_charge} ;;
  }

  measure: average_total_delivery_charge {
    type: average
    hidden: yes
    sql: ${total_delivery_charge} ;;
  }

  measure: total_total_delivery_insurance_fee {
    type: sum
    hidden: yes
    sql: ${total_delivery_insurance_fee} ;;
  }

  measure: average_total_delivery_insurance_fee {
    type: average
    hidden: yes
    sql: ${total_delivery_insurance_fee} ;;
  }

  measure: total_total_delivery_weight {
    type: sum
    hidden: yes
    sql: ${total_delivery_weight} ;;
  }

  measure: average_total_delivery_weight {
    type: average
    hidden: yes
    sql: ${total_delivery_weight} ;;
  }

  measure: total_total_enuri_dc_price {
    type: sum
    hidden: yes
    sql: ${total_enuri_dc_price} ;;
  }

  measure: average_total_enuri_dc_price {
    type: average
    hidden: yes
    sql: ${total_enuri_dc_price} ;;
  }

  measure: total_total_goods_dc_price {
    type: sum
    hidden: yes
    sql: ${total_goods_dc_price} ;;
  }

  measure: average_total_goods_dc_price {
    type: average
    hidden: yes
    sql: ${total_goods_dc_price} ;;
  }

  measure: total_total_goods_mileage {
    type: sum
    hidden: yes
    sql: ${total_goods_mileage} ;;
  }

  measure: average_total_goods_mileage {
    type: average
    hidden: yes
    sql: ${total_goods_mileage} ;;
  }

  measure: total_total_goods_price {
    type: sum
    hidden: yes
    sql: ${total_goods_price} ;;
  }

  measure: average_total_goods_price {
    type: average
    hidden: yes
    sql: ${total_goods_price} ;;
  }

  measure: total_total_member_bank_dc_price {
    type: sum
    hidden: yes
    sql: ${total_member_bank_dc_price} ;;
  }

  measure: average_total_member_bank_dc_price {
    type: average
    hidden: yes
    sql: ${total_member_bank_dc_price} ;;
  }

  measure: total_total_member_dc_price {
    type: sum
    hidden: yes
    sql: ${total_member_dc_price} ;;
  }

  measure: average_total_member_dc_price {
    type: average
    hidden: yes
    sql: ${total_member_dc_price} ;;
  }

  measure: total_total_member_delivery_dc_price {
    type: sum
    hidden: yes
    sql: ${total_member_delivery_dc_price} ;;
  }

  measure: average_total_member_delivery_dc_price {
    type: average
    hidden: yes
    sql: ${total_member_delivery_dc_price} ;;
  }

  measure: total_total_member_mileage {
    type: sum
    hidden: yes
    sql: ${total_member_mileage} ;;
  }

  measure: average_total_member_mileage {
    type: average
    hidden: yes
    sql: ${total_member_mileage} ;;
  }

  measure: total_total_member_overlap_dc_price {
    type: sum
    hidden: yes
    sql: ${total_member_overlap_dc_price} ;;
  }

  measure: average_total_member_overlap_dc_price {
    type: average
    hidden: yes
    sql: ${total_member_overlap_dc_price} ;;
  }

  measure: total_total_mileage {
    type: sum
    hidden: yes
    sql: ${total_mileage} ;;
  }

  measure: average_total_mileage {
    type: average
    hidden: yes
    sql: ${total_mileage} ;;
  }

  measure: total_total_myapp_dc_price {
    type: sum
    hidden: yes
    sql: ${total_myapp_dc_price} ;;
  }

  measure: average_total_myapp_dc_price {
    type: average
    hidden: yes
    sql: ${total_myapp_dc_price} ;;
  }

  measure: total_use_deposit {
    type: sum
    hidden: yes
    sql: ${use_deposit} ;;
  }

  measure: average_use_deposit {
    type: average
    hidden: yes
    sql: ${use_deposit} ;;
  }

  measure: total_use_mileage {
    type: sum
    hidden: yes
    sql: ${use_mileage} ;;
  }

  measure: average_use_mileage {
    type: average
    hidden: yes
    sql: ${use_mileage} ;;
  }
}
