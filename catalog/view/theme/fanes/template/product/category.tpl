<?php echo $header; ?>
<div class="content-block">
<ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
<div class="content">
  <?php echo $column_left; ?>
     <?php if ($column_left && $column_right) { ?>
   <?php $class = 'product-card product-card-s'; ?>
   <?php } elseif ($column_left || $column_right) { ?>
   <?php $class = 'product-card product-card-l'; ?>
   <?php } else { ?>
   <?php $class = 'product-card'; ?>
       <?php } ?>
    <div id="product-category" class="content-center">
     <?php echo $content_top; ?>
      <h1 class="heading-title"><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="thumb-description-block">  <?php if ($thumb) { ?>
        <div class="thumbs"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
           <?php } ?>
         <?php if ($description) { ?>
        <div class="description"><?php echo $description; ?></div>
           <?php } ?></div>
         <?php } ?>
        <?php if ($categories) { ?>
       <h3 class="cat-title"><?php echo $text_refine; ?></h3>
      <div class="category-block">
          <ul>
             <?php foreach ($categories as $category) { ?>
            <li>
                <a style="min-height: 100%;" href="<?php echo $category['href']; ?>">
                    <?php if ($category['thumb']) { ?>
                        <div style="margin-bottom: 8px;" class="thumbs"><img style="border: 0;" src="<?php echo $category['thumb']; ?>" alt="<?php //echo $category['name']; ?>" title="<?php //echo $category['name']; ?>" class="img-thumbnail" /></div>
                    <?php } ?>
                    <?php echo $category['name']; ?>
                </a>
            </li>
            <?php } ?>
          </ul>
      </div>
         <?php } ?>
       <?php if ($products) { ?>
       
      <div class="sort-block">
        <div class="sort">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
             <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          </div>
        </div>
        <div class="sort">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          </div>
        </div>
      </div>
      
<div class="h_product-wrapp">

   <!-- <ul class="list-group list-group-horizontal">
        <li class="list-group-item">Cras justo odio</li>
        <li class="list-group-item">Dapibus ac facilisis in</li>
        <li class="list-group-item">Morbi leo risus</li>
        <li class="list-group-item">Morbi leo risus.</li>
    </ul> -->
<?php $products_cnt = 0;  ?>
<?php foreach ($products as $product) { ?>
    
    <?php if($products_cnt>0){
            $row_class = '';
        }
        else{
            $row_class = 'row_first';
        }
    ?>
    
    <table class="prod_table">
    <tr>
        <td>
            
            <div class="row <?php echo $row_class; ?>">
                <div class="col-md-5">
                    <h4 class="product-name product-name-align"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                </div>
                <div class="col-md-2 vertical-text-align">604G1418</div>
                <div class="col-md-2 vertical-text-align">
                    <?php if ($product['price']) { ?>
                        <?php echo $product['price']; ?>
                    <?php } ?>
                </div>
                <div class="col-md-3">
                    <div class="button-add my_button-add">
                        <button class="btn btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
                    </div>
                </div>
            </div>
            
        </td>
    </tr>
    </table>
    

    
    <?php /*
    <ul class="list-group list-group-horizontal">
        <li class="list-group-item">
            <h4 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        </li>
        <li class="list-group-item">604G1418</li>
        <li class="list-group-item">
            <?php if ($product['price']) { ?>
                <?php echo $product['price']; ?>
            <?php } ?>
        </li>
        <li class="list-group-item">
            <div class="button-add">
                <button class="btn btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
            </div>
        </li>
    </ul>
 */?>
    
    
    
    <?php /*
  <div class="<?php echo $class; ?>">
     <div class="btn-top">
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
     </div>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p class="product-description"><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
           <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
         <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
             <?php } ?>
          <?php } ?>
        </div>
           <?php } ?>
          <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
      </div>
      <div class="button-add">
        <button class="btn btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
      </div>
  </div>
    */?>
    <?php $products_cnt++;  ?>
  <?php } ?>
</div>
      
      
      
      <div class="pagination-block">
        <div class="paginations"><?php echo $pagination; ?></div>
        <div class="results-text"><?php echo $results; ?></div>
      </div>
         <?php } ?>
   <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
         <?php } ?>
      </div>
     <?php echo $column_right; ?>
</div>
<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?> 
