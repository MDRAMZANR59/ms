<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Purchase Invoice </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.2.slim.js" integrity="sha256-OflJKW8Z8amEUuCaflBZJ4GOg4+JnNh9JdVfoV+6biw=" crossorigin="anonymous"></script>
 
    <style> 
        @media print {
        
            .btn{
                    display:none;
            }

        .input-group-text {
                    width: 85px;
            }    

        .btn , .NoPrint {
                    display: none;
            }

        .form-control {
                    border: 0px;
            }

        .input-group-text {
                    border: 0px;
                    background-color: white;
            }

        table {
                    border : 1px solid black;
            }
        }
    </style>
</head>
  <body>  

    <div class="container ">
       
        <div class="card">
            <div class="card-header text-center">
              <h4> PURCHASE INVOICE</h4>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-8">
                        <div class="input-group mb-3">
                            <span class="input-group-text" >Customer</span>
                            <input type="text" class="form-control" placeholder="Customer"  >
                        </div>
            
                        <div class="input-group mb-3">
                            <span class="input-group-text" >Address</span>
                            <input type="text" class="form-control" placeholder="Address"  >
                        </div>
            
                        <div class="input-group mb-3">
                            <span class="input-group-text" >City</span>
                            <input type="text" class="form-control" placeholder="City"  >
                        </div>
                    </div>
                    <div class="col-4">
                      
                        <div class="input-group mb-3">
                            <span class="input-group-text" >Inv. No</span>
                            <input type="text" class="form-control" placeholder="Inv. No"  >
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" >Inv. Date</span>
                            <input type="date" class="form-control" placeholder="Inv. Date"  >
                        </div>



                    </div>
                </div>


                <table class="table table-bordered">
                    <thead class="table-success">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Particular</th>
                        <th scope="col" class="text-end">Qty</th>
                        <th scope="col" class="text-end">Rate</th>
                        <th scope="col" class="text-end">Gross</th>
                        <th scope="col" class="text-end">Discount</th>
                        <th scope="col" class="text-end">Amount</th>
                        <th scope="col" class="text-end">Vat</th>
                        <th scope="col" class="text-end">Total</th>
                        <th scope="col" class="NoPrint">                         
                            <button type="button" class="btn btn-sm btn-success" onclick="BtnAdd()">+</button>
                          
                        </th>

                      </tr>
                    </thead>
                    <tbody id="TBody">
                      <tr id="TRow" class="d-none">
                        <th scope="row">1</th>
                        <td><input type="text" class="form-control" ></td>
                        <td><input type="number" class="form-control text-end" name="qty" onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="rate"  onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="gross"  onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="discount"  onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="amt"  onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="vat"  onchange="Calc(this);"></td>
                        <td><input type="number" class="form-control text-end" name="total" value="0" onchange="Calc(this);" disabled=""></td>
                        <td class="NoPrint"><button type="button" class="btn btn-sm btn-danger" onclick="BtnDel(this)">X</button></td>
                      </tr>
                    </tbody>
                  </table>


                  <div class="row">
                    <div class="col-8">
                      
                        <button type="button" class="btn btn-primary" onclick="GetPrint()">Print</button>

                    </div>
                    <div class="col-4">
                        <div class="input-group mb-3">
                            <span class="input-group-text" > Grand Total</span>
                            <input type="number" class="form-control text-end" id="FTotal" name="FTotal" disabled="">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" >Gst</span>
                            <input type="number" class="form-control text-end" id="FGST" name="FGST" onchange="GetTotal()">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" >Net Amt</span>
                            <input type="number" class="form-control text-end" id="FNet" name="FNet" disabled="">
                        </div>


                    </div>
                </div>
             </div>
          </div>

    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
  
</html>

<script>
    function GetPrint(){

        window.print();
    }

    function BtnAdd(){

        var v = $("#TRow").clone().appendTo("#TBody") ;
        $(v).find("input").val('');
        $(v).removeClass("d-none");
        $(v).find("th").first().html($('#TBody tr').length - 1);
    }

    function BtnDel(v){

       $(v).parent().parent().remove(); 
       GetTotal();

        $("#TBody").find("tr").each(
        function(index)
        {
           $(this).find("th").first().html(index);
        }

       );
    }

    function Calc(v){
        var index = $(v).parent().parent().index();
    
        var qty = document.getElementsByName("qty")[index].value;
        var rate = document.getElementsByName("rate")[index].value;
        var discount = document.getElementsByName("discount")[index].value;
        var vat = document.getElementsByName("vat")[index].value;
        

        var gross = qty * rate;
        document.getElementsByName("gross")[index].value = gross;

        var amt = gross - discount;
        document.getElementsByName("amt")[index].value = amt;

        vat= amt * (vat/100)
        var total = amt + vat; 
        document.getElementsByName("total")[index].value = total;

        GetTotal();
    }

    function GetTotal() {

        var sum=0;
        var totals = document.getElementsByName("total");

        for (let index = 0; index < totals.length; index++){
        var total = totals[index].value;
        sum = +(sum) +  +(total) ; 
        }

        document.getElementById("FTotal").value = sum;

        var gst =  document.getElementById("FGST").value;
        var net = +(sum) + +(gst);
        document.getElementById("FNet").value = net;

        }
</script>
