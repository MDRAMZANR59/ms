<?php include('include/header.php') ; ?>
<link href="https://cdn.datatables.net/v/bs5/dt-2.0.8/datatables.min.css" rel="stylesheet">
 
<script src="https://cdn.datatables.net/v/bs5/dt-2.0.8/datatables.min.js"></script>
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="py-3 mb-4"><span class="text-muted fw-light"> </span> Purchase Return List</h4>

        <!-- Basic Bootstrap Table -->
        <div class="card">
            <h5 class="card-header">Purchase</h5>
            <div class="table-responsive text-nowrap">
                <table class="table">
                <thead>
                    <tr>
                        <th>#SL</th>
                        <th>Supplier</th>
                        <th>Date</th>
                        <th>Qty</th>
                        <th>Sub Total</th>
                        <th>Discount</th>
                        <th>VAT</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php 
                        $result=$mysqli->common_select_query("select supplier.name as sup_name,purchase_return.* from purchase_return join supplier on supplier.id=purchase_return.supplier_id");
                        if($result){
                            if($result['data']){
                                $i=1;
                                foreach($result['data'] as $data){
                    ?>
                    <tr>
                    
                        <td><?= $i++ ?></td>
                        <td><?= $data->sup_name ?></td>
                        <td><?= date('d-m-Y',strtotime($data->purchase_return_date)) ?></td>
                        <td><?= $data->qty ?></td>
                        <td><?= $data->sub_amount ?></td>
                        <td><?= $data->discount ?></td>
                        <td><?= $data->vat ?></td>
                        <td><?= $data->total_amount ?></td>
                        
                    </tr>

                    <?php } } } ?>
                </tbody>
                </table>
            </div>
        </div>
        <!--/ Basic Bootstrap Table -->

    </div>
            <!-- / Content -->



<?php include('include/footer.php') ; ?>