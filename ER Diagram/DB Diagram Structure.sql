Table hier_clnd {
  fscldt_id string [primary key]
  fscldt_label string
  fsclwk_id string
  fsclwk_label string
  fsclmth_id string
  fsclmth_label string
  fsclqrtr_id string
  fsclqrtr_label string
  fsclyr_id string
  fsclyr_label string
  ssn_id string
  ssn_label string
  ly_fscldt_id string
  lly_fscldt_id string
  fscldow string
  fscldom string
  fscldoq string
  fscldoy string
  fsclwoy string
  fsclmoy string
  fsclqoy string
  date string
}

Table hier_hldy {
  hldy_id string [primary key]
  hldy_label string
}

Table hier_invloc {
  loc string [primary key]
  loc_label string
  loctype string
  loctype_label string
}

Table hier_invstatus {
  code_id string [primary key]
  code_label string
  bckt_id string
  bckt_label string
  ownrshp_id string
  ownrshp_label string
}

Table hier_possite {
  site_id string [primary key]
  site_label string
  subchnl_id string
  subchnl_label string
  chnl_id string
  chnl_label string
}

Table hier_pricestate {
  substate_id string [primary key]
  substate_label string
  state_id string
  state_label string
}

Table hier_prod {
  sku_id string [primary key]
  sku_label string
  stylclr_id string
  stylclr_label string
  styl_id string
  styl_label string
  subcat_id string
  subcat_label string
  cat_id string
  cat_label string
  dept_id string
  dept_label string
  issvc string
  isasmbly string
  isnfs string
}

Table hier_rtlloc {
  str string [primary key]
  str_label string
  dstr string
  dstr_label string
  rgn string
  rgn_label string
}

Table fact_transactions {
  order_id string [primary key]
  line_id string [primary key]
  type string
  dt string
  pos_site_id string
  sku_id string
  fscldt_id string
  price_substate_id string
  sales_units string
  sales_dollars string
  discount_dollars string
  original_order_id string
  original_line_id string
}

Ref: hier_invloc.loc > hier_rtlloc.str
Ref: hier_invstatus.code_id > hier_prod.sku_id
Ref: hier_possite.site_id > hier_rtlloc.str
Ref: hier_pricestate.state_id > hier_rtlloc.rgn
Ref: fact_transactions.fscldt_id > hier_clnd.fscldt_id
Ref: fact_transactions.pos_site_id > hier_possite.site_id
Ref: fact_transactions.sku_id > hier_prod.sku_id
Ref: fact_transactions.price_substate_id > hier_pricestate.substate_id
