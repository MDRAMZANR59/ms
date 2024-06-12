<?php include('include/header.php') ; ?>

<!-- Content -->

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">User/</span> Update</h4>
    <?php 
        $olddata=array();
        $con['id']=$_GET['id'];
        $result=$mysqli->common_select_single('auth','*',$con);
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
            <h5 class="mb-0">User Information</h5>
        </div>
        <div class="card-body">
            <form method="post" action="" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label" for="fullname">Full Name</label>
                    <input type="text" name="name" class="form-control" id="fullname" placeholder="John Doe" value="<?= $olddata->name ?>" required />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="email">E->mail</label>
                    <input type="text" name="email" id="email" class="form-control" placeholder="abc@email.com" value="<?= $olddata->email ?>" required />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="contact ">Contact</label>
                    <input type="text" name="contact" id="contact" class="form-control" placeholder="Enter Your Contact Number" value="<?= $olddata->contact ?>" />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="photo">Photo</label>
                    <input type="file" name="photo" id="photo" class="form-control" required value="<?= $olddata->photo ?>" />
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
            <?php 
                if($_POST){
                    $_POST['updated_at']=date('Y-m-d H:i:s');
                    $_POST['updated_by']=1;
                    $rs=$mysqli->common_update('auth',$_POST,$con);
                    if($rs){
                        if($rs['data']){
                            echo "<script>window.location='{$baseurl}user_list.php'</script>";
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