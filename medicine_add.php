<?php include('include/header.php') ; ?>

<!-- Content -->

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">medicine/</span> Add New</h4>

    <!-- Basic Layout -->
    <div class="row">
    <div class="col-xl">
        <div class="card mb-4">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="mb-0">medicine Information</h5>
        </div>
        <div class="card-body">
            <form method="post" action="">
                
                <div class="mb-3">
                    <label class="form-label" for="brand_name">brand_name</label>
                    <input type="text" name="brand_name" id="brand_name" class="form-control brand_name-mask"  placeholder="John Doe" />
                </div>
                <div class="mb-3"> 
                    <label class="form-label" for="generic_name">generic_name</label>
                    <input type="text" name="generic_name" id="generic_name" class="form-control"  placeholder="John Doe" />
                </div> 
                <div class="mb-3">
                    <label class="form-label" for="dose">dose</label>
                    <input type="text" name="dose" id="dose" class="form-control"  placeholder="John Doe" />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="price">Price</label>
                    <input type="text" name="price" id="price" class="form-control"/>
                </div>
                 <div class="mb-3">
                    <label class="form-label" for="type_id">type_id</label>
                    <select class="form-control form-select" required name="type_id" id="type_id">
                        <option value="">Select Type</option>
                        <?php 
                            $result=$mysqli->common_select('type');
                            if($result){
                                if($result['data']){
                                    $i=1;
                                    foreach($result['data'] as $d){
                        ?>
                            <option value="<?= $d->id ?>" > <?= $d->type ?></option>
                        <?php } } } ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
            <?php 
                if($_POST){
                    $_POST['created_at']=date('Y-m-d H:i:s');
                    $_POST['created_by']=$_SESSION['id'];
                    $_POST['status']=1;
                    $rs=$mysqli->common_create('medicine',$_POST);
                    if($rs){
                        if($rs['data']){
                            echo "<script>window.location='{$baseurl}medicine_list.php'</script>";
                        }else{
                            echo $rs['error'];
                        }
                    }
                }
            ?>
        </div>
        </div>
    </div>
    
    </div>
</div>
<!-- / Content -->

<?php include('include/footer.php') ; ?>