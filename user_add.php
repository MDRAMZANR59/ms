<?php include('include/header.php') ; ?>

<!-- Content -->

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">User/</span> Add New</h4>

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
                    <input type="text" name="name" class="form-control" id="fullname" placeholder="John Doe" required />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="email">E->mail</label>
                    <input type="text" name="email" id="email" class="form-control" placeholder="abc@email.com" required />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="contact ">Contact</label>
                    <input type="text" name="contact" id="contact" class="form-control" placeholder="Enter Your Contact Number" />
                </div>
                <div class="mb-3">
                    <label class="form-label" for="photo">Photo</label>
                    <input type="file" name="photo" id="photo" class="form-control" required />
                </div>
                <button type="submit" name="" class="btn btn-primary">Save</button>
            </form>
            <?php 
                if($_POST){
                    if($_FILES){
                        $img=$_FILES["photo"];
                    
                            $msg="File upload fail";

                            $rs=move_uploaded_file($img['tmp_name'],$img['name']);
                    if($rs){
                        $msg="File uploaded";
                    }             
                }
                    
                    
                    $_POST['created_at']=date('Y-m-d H:i:s');
                    $_POST['created_by']=1;
                    $rs=$mysqli->common_create('auth',$_POST);
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