<?php require_once('include/connection.php'); ?>
<?php 
    $id=$_GET['id'];
    $invoice_data=$medicines=[];
    $result=$mysqli->common_select_query("select customer.name as cus_name,customer.contact,sales.* from sales join customer on customer.id=sales.customer_id where sales.id=$id");
    if($result){
        if($result['data']){
            foreach($result['data'] as $data){
                $invoice_data=$data;
            }
        }
    }
    $result=$mysqli->common_select_query("SELECT sales_details.*, medicine.brand_name,medicine.generic_name FROM `sales_details` JOIN medicine on medicine.id=sales_details.medicine_id where sales_details.sales_id=$id");
    if($result){
        if($result['data']){
            foreach($result['data'] as $data){
                $medicines[]=$data;
            }
        }
    }
?>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <title>Invoice</title>
  <style>
  </style>
</head>
<body>
  <style>
    @import url(https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic);
        /** GLOBAL **/

        html, body {
        height: 100%;
        background: #002336;
        width: 100%;
        margin: 0;
        padding: 0;
        left: 0;
        top: 0;
        font-size: 100%;
        }
        * {
        font-family: "Lato", "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
        color: #333447;
        line-height: 1.5;
        }
        /* TYPOGRAPHY */

        h1 {
        font-size: 2.5rem;
        }
        h2 {
        font-size: 2rem;
        }
        h3 {
        font-size: 1.375rem;
        }
        h4 {
        font-size: 1.125rem;
        }
        h5 {
        font-size: 1rem;
        }
        h6 {
        font-size: 0.875rem;
        }
        p {
        font-size: 1.125rem;
        font-weight: 200;
        line-height: 1.8;
        }
        .font-light {
        font-weight: 300;
        }
        .font-regular {
        font-weight: 400;
        }
        .font-heavy {
        font-weight: 700;
        }
        /* POSITIONING */

        .left {
        text-align: left;
        }
        .right {
        float: right;
        text-align: right;
        }
        .center {
        text-align: center;
        margin-left: auto;
        margin-right: auto;
        }
        .justify {
        text-align: justify;
        }
        /** standard padding**/

        .no-padding {
        padding: 0px;
        }
        .standard-padding {
        padding: 20px;
        }
        .standard-padding-right {
        padding-right: 20px;
        }
        .standard-padding-left {
        padding-left: 20px;
        }
        .standard-padding-right {
        padding-left: 20px;
        }
        .standard-padding-top {
        padding-top: 20px;
        }
        .standard-padding-bottom {
        padding-bottom: 20px;
        }
        .container {
        width: 100%;
        margin-left: auto;
        margin-right: auto;
        }
        .row {
        position: relative;
        width: 100%;
        }
        .row [class^="col"] {
        float: left;
        margin: 0.5rem 2%;
        min-height: 0.125rem;
        }
        .row::after {
        content: "";
        display: table;
        clear: both;
        }
        .hidden-sm {
        display: none;
        }
        .invoice-box {
        background: #ffffff;
        max-width: 900px;
        margin: 60px auto;
        padding: 30px;
        border: 1px solid #002336;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        line-height: 24px;
        color: #002336;
        }
        .title {
        margin-bottom: 0px;
        padding-bottom: 0px;
        margin-left: 10px;
        margin-right: 10px;
        font-weight: bold;
        border-bottom: 1px solid #8B8B8B;
        margin-bottom: 4px;
        }
        .infoblock {
        margin-left: 10px;
        margin-right: 10px;
        margin-top: 0px;
        padding-top: 0px;
        }
        .titles {
        padding-top: 4px;
        margin-top: 20px;
        background: #DCDCDC;
        font-weight: bold;
        }
        @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        }
        /** RTL **/

        .rtl {
        direction: rtl;
        font-family: "Lato", Tahoma, "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
        }
        .rtl table {
        text-align: right;
        }
        .rtl table tr td:nth-child(2) {
        text-align: left;
        }
        .eqWrap {
        display: flex;
        }
        .eq {
        padding: 10px;
        }
        .item:nth-of-type(odd) {
        background: #F9F9F9;
        }
        .item:nth-of-type(even) {
        background: #fff;
        }
        .equalHW {
        flex: 1;
        }
        .equalHM {
        width: 32%;
        }
        .equalHMR {
        width: 32%;
        margin-bottom: 2%;
        }
        table.table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        }
        .table th, .table td {
        text-align: left;
        padding: 0.25em;
        }
        .table tr {
        border-bottom: 1px solid #DDD;
        }
        button:hover {
        box-shadow: 0 0 4px rgba(3, 3, 3, 0.8);
        opacity: 0.9;
        }
  </style>
  <div class="watermark">
    <span id="watermark" style="display:none;">WATERMARK</span>
  </div>
  <div class="invoice-box">
    <div class="container">
      <div class="row">
        <div class="equalHWrap eqWrap top">
          <div class="equalHW eq center logo-block">
            <a href=""><img src="<?= $baseurl ?>/assets/img/illustrations/icons8-medicine-48.png" style="width:100%; max-width:55px;"></a>
          </div>
          <div class="equalHW eq contact-info-block">
            <span id="AccountEmail">pharmacy@weeblecode.com</span><br>
            <span id="AccountPhone">016</span>
          </div>
          <div class="equalHW eq title-block">
            <h2 class="right no-padding" id="InvoiceSumExVat" style="margin:0px;">MS Invoice</h2>
          </div>
        </div>
        <div class="row" style="margin-top:20px;">
          <div class="equalHWrap eqWrap nomargin-nopadding to-block">
            <div class="equalHW eq nomargin-nopadding title">
              Customer
            </div>
            <div class="equalHW eq nomargin-nopadding title from-block">
              
            </div>
            <div class="equalHW eq nomargin-nopadding title info-block">
              Invoice<span class="right">#<span id="InvoiceNumber">INV<?= str_pad($invoice_data->id,5,"0",STR_PAD_LEFT) ?></span></span><br>
            </div>
          </div>
          <div class="row">
            <div class="equalHWrap eqWrap">
              <div class="equalHW eq infoblock to-block">
                <span id="CustomerName"><?= $invoice_data->cus_name ?></span><br>
                <span id="AccountProject"><?= $invoice_data->contact ?></span><br>
              </div>
              <div class="equalHW eq infoblock from-block">
               
              </div>
              <div class="equalHW eq infoblock info-block">
                <span id="">Date:</span> <span class="right" id="CreatedDate"><?= date('d-m-Y',strtotime($invoice_data->sales_date)); ?></span><br>
                <span id="">Medicine </span>: <span class="right" id="DueDate"><?= $invoice_data->qty ?></span><br>
                <span id="">Total</span>: <span class="right" id="KidNumber"><?= $invoice_data->total_amount ?></span><br>
              </div>
            </div>
          </div>
          
          <table class="table">
            <tr class="titles">
              <th>#SL</th>
              <th>Medicine</th>
              <th>Qty</th>
              <th>Unit Price</th>
              <th>Price</th>
            </tr>
            <?php if($medicines){foreach($medicines as $i=>$medi){ ?>
                <tr class="item" id="ProductList">
                    <td><?= ++$i ?></td>
                    <td id="Product">
                        <span id="ProuductName"><?= $medi->brand_name ?><span>
                        <small><?= $medi->generic_name ?></small>
                    </td>
                    <td><span id="ProductUnit"><?= $medi->qty ?><span></span></span></td>
                    <td><span id="ProductUnitPrice"><?= $medi->price ?></span></td>
                    <td><span id="ProductDiscount"><?= $medi->price * $medi->qty ?></span></td>
                </tr>
            
            <?php }} ?>
           
          </table>
        </div>
        <div class="row">
          <div class="equalHWrap eqWrap">
            <div class="equalHW eq">
              <table class="right">
                <tr>
                  <td><span style="display:inline-block;margin-right:10px;"><strong>Total Sub:</strong></span></td>
                  <td><span id="InvoceTotalVat"><?= $invoice_data->sub_amount ?></span> <span id="InvoiceCurrency1">BDT</span><br></td>
                </tr>
                <tr>
                  <td><span style="display:inline-block;margin-right:10px;"><strong>Discount:</strong></span></td>
                  <td><span id="InvoiceSumExVat"><?= $invoice_data->discount ?></span> <span id="InvoiceCurrency2">BDT</span></td>
                </tr>
                <tr>
                  <td><span style="display:inline-block;margin-right:10px;"><strong>VAT:</strong></span></td>
                  <td><span id="ProductCost"><?= $invoice_data->vat ?></span> <span id="InvoiceCurrency3">BDT</span></td>
                </tr>
                <tr>
                  <td><span style="display:inline-block;margin-right:10px;"><strong>Total:</strong></span></td>
                  <td><span id="ProductCost"><?= $invoice_data->total_amount ?></span> <span id="InvoiceCurrency3">BDT</span></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="center">
            <a href="https://weeblecode.com/pharmacy" style="text-decoration:none;"> WDPF R59 <span style="border-bottom:1px solid #000;"></span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>