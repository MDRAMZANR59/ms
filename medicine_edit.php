<?php include('include/header.php') ; ?>

<!-- Content -->

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">medicine/</span> Update</h4>
    <?php 
        $olddata=array();
        $con['id']=$_GET['id'];
        $result=$mysqli->common_select_single('medicine','*',$con);
        if($result){
            if($result['data']){
                $olddata=$result['data'];
            }
        }
    ?>
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
                    <label class="form-label" for="id">id</label>
                    <input type="text" name="id" class="form-control" id="id" value="<?= $olddata->id ?>" />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="brand_name">brand_name</label>
                    <input type="text" name="brand_name" id="brand_name" class="form-control brand_name-mask" value="<?= $olddata->brand_name ?>" />
                </div>
                <div class="mb-3"> 
                    <label class="form-label" for="generic-name">generic-name</label>
                    <input type="text" name="generic-name" id="generic-name" class="form-control" value="<?= $olddata->generic_name ?>" />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="dose">dose</label>
                    <input type="text" name="dose" id="dose" class="form-control" value="<?= $olddata->dose ?>" />
                </div>
                 <div class="mb-3">
                    <label class="form-label" for="type_id">type_id</label>
                    <input type="text" name="type_id" id="type_id" class="form-control" value="<?= $olddata->type_id ?>" />
                </div>
                 <div class="mb-3">
                    <label class="form-label" for="status">status</label>
                    <input type="text" name="status" id="status" class="form-control" value="<?= $olddata->status ?>" />
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
            <?php 
                if($_POST){
                    $_POST['udated_at']=date('Y-m-d H:i:s');
                    $_POST['updated_by']=1;
                    $rs=$mysqli->common_update('medicine',$_POST,$con);
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