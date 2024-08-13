<?php include('include/header.php') ; ?>


<div class="untree_co-section before-footer-section">
  <div class="container">
    <div class="row mb-5">
      <form class="col-md-12" method="post">
        <div class="site-blocks-table">
          <table class="table">
            <thead>
              <tr>
                <th class="product-thumbnail">Image</th>
                <th class="product-name">Product</th>
                <th class="product-price">Price</th>
                <th class="product-quantity">Quantity</th>
                <th class="product-total">Total</th>
                <th class="product-remove">Remove</th>
              </tr>
            </thead>
            <tbody class="cart_data">
              
            </tbody>
          </table>
        </div>
      </form>
    </div>

    <div class="row">
      <div class="col-md-6">
        <div class="row">
          <div class="col-md-12">
            <label class="text-black h4" for="coupon">Coupon</label>
            <p>Enter your coupon code if you have one.</p>
          </div>
          <div class="col-md-7 mb-3 mb-md-0">
            <input type="text" class="form-control py-3" id="cupon_code" placeholder="Coupon Code">
          </div>
          <div class="col-md-5">
            <button class="btn btn-black" onclick="apply_coupone()">Apply Coupon</button>
          </div>
        </div>
      </div>
      <div class="col-md-6 pl-5">
        <div class="row justify-content-end">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-12 text-right border-bottom mb-5">
                <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
              </div>
            </div>
            <div class="totaldata">
              
            </div>
            
            <div class="row">
              <div class="col-md-12">
                <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='checkout.php'">Proceed To Checkout</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div><!-- Start Footer Section -->
<!-- info section -->
  <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_contact">
            <h4>
              Contact
            </h4>
            <div class="box">
              <div class="img-box">
                <img src="images/telephone-symbol-button.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  +01 123567894
                </h6>
              </div>
            </div>
            <div class="box">
              <div class="img-box">
                <img src="images/email.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  ms@gmail
                </h6>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_menu">
            <h4>
              Menu
            </h4>
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.php"> About </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="medicine.php"> Medicine </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="buy.php"> Online Buy </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-6">
          <div class="info_news">
            <h4>
              newsletter
            </h4>
            <form action="">
              <input type="text" placeholder="Enter Your email">
              <div class="d-flex justify-content-center justify-content-end mt-3">
                <button>
                  Subscribe
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- end info section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      &copy; 2024 All Rights Reserved. Design by
      <a href="index.php"> MS</a>
    </p>
  </section>
  <!-- footer section -->
  <!-- Footer -->
            
            <?php include('include/footer.php') ; ?>
</body>

</html>

<script>
  let cart_data=<?= json_encode($_SESSION['cart']) ?>;
  
  writeProduct(cart_data)
  function writeProduct(data){
    let tbodydata="";
    let totaldata="";
    if(data.item !=""){
      for (const [key, value] of Object.entries(data.item)) {
        tbodydata+=`<tr>
                    <td class="product-thumbnail" width="10%">
                      <img src="<?= $baseurl ?>assets/img/medicine/${value.photo}" alt="Image" class="img-fluid w-100">
                    </td>
                    <td class="product-name">
                      <h2 class="h5 text-black">${value.brand_name}</h2>
                    </td>
                    <td>BDT ${value.price}</td>
                    <td>
                      <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                        <div class="input-group-prepend">
                          <button onclick="updateCart(${key},'out')" class="btn btn-outline-black decrease" type="button">&minus;</button>
                        </div>
                        <input type="text" class="form-control text-center quantity-amount" value="${value.qty}" placeholder="">
                        <div class="input-group-append">
                          <button onclick="updateCart(${key},'in')" class="btn btn-outline-black increase" type="button">&plus;</button>
                        </div>
                      </div>
                    </td>
                    <td>BDT ${value.price * value.qty}</td>
                    <td><a href="javascript:void(0)" onclick="deleteCart(${key})" class="btn btn-black btn-sm">X</a></td>
                  </tr>`;
      }
      totaldata=`<div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black">Subtotal</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black">BDT ${data.total}</strong>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black">Discount</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black">BDT ${data.discount}</strong>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Total</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black">BDT ${data.total - data.discount}</strong>
                  </div>
                </div>`;
    }else{
      tbodydata=`<tr>
                    <td colspan="6">
                      Please add product to cart
                    </td>
                  </tr>`;
    }
    $('.cart_data').html(tbodydata)
    $('.totaldata').html(totaldata)
  }

  function updateCart(id,type){
    $.get('cart_update.php',
      { id : id,type:type},
      function(data){
        if(data){
          data=JSON.parse(data);
          writeProduct(data)
        }
      }
    )
  }
  function deleteCart(id){
    $.get('cart_delete.php',
      { id : id},
      function(data){
        if(data){
          data=JSON.parse(data);
          writeProduct(data)
        }
      }
    )
  }
  function apply_coupone(){
    let cupon_code=$('#cupon_code').val();
    $.get('apply_coupone.php',
      { cupon_code : cupon_code},
      function(data){
        if(data){
          data=JSON.parse(data);
          writeProduct(data);
          $('#cupon_code').val('');
          alert('your coupone code applied succefully')
        }
      }
    )
  }
</script>