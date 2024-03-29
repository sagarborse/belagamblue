<script>
    $(document).ready(function () {
        $('.featured-scroll').owlCarousel({
            smartSpeed: 450,
            dots: false,
            nav: true,
            loop: true,
            navClass: ['owl-prev fa fa-angle-up', 'owl-next fa fa-angle-down'],
            responsive:{
                0:{items:1},
                480:{items:2,margin:20},
                992:{items: 3,margin: 30}
            }
        });

        $(".quickview").fancybox({
            maxWidth: 800,
            maxHeight: 600,
            fitToView: false,
            width: '70%',
            height: '70%',
            autoSize: false,
            closeClick: false,
            openEffect: 'elastic',
            closeEffect: 'elastic',
        });

    });
</script>
<div class="box featured">
    <div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>
    <div class="box-content">
        <div class="featured-scroll">
            <?php $f=0; foreach ($products as $product) { $f++ ?>
            <div class="product-thumb transition maxheight2">
                <div class="quick_info">
                    <div id="quickview_<?php echo $f?>" class="quickview-style">
                        <div>
                            <div class="left col-sm-4">
                                <div class="quickview_image image">
                                    <a href="<?php echo $product['href']; ?>"><img
                                            alt="<?php echo $product['name']; ?>"
                                            title="<?php echo $product['name']; ?>" class="img-responsive"
                                            src="<?php echo $product['thumb']; ?>"/></a>
                                </div>
                            </div>
                            <div class="right col-sm-8">
                                <h2><?php echo $product['name']; ?></h2>

                                <div class="inf">
                                    <?php if ($product['author']) {?>
                                    <p class="quickview_manufacture manufacture manufacture"><?php echo $text_manufacturer; ?>
                                        <a href="<?php echo $product['manufacturers'];?>"><?php echo $product['author']; ?></a>
                                    </p>
                                    <?php }?>
                                    <?php if ($product['model']) {?>
                                    <p class="product_model model"><?php echo $text_model; ?> <?php echo $product['model']; ?></p>
                                    <?php }?>

                                    <?php if ($product['price']) { ?>
                                    <div class="price">
                                        <?php if (!$product['special']) { ?>
                                        <?php echo $product['price']; ?>
                                        <?php } else { ?>
                                        <span class="price-new"><?php echo $product['special']; ?></span> <span
                                            class="price-old"><?php echo $product['price']; ?></span>
                                        <?php } ?>
                                        <?php if ($product['tax']) { ?>
                                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </div>
                                <div class="cart-button">
                                    <button class="btn btn-add" type="button" data-toggle="tooltip"
                                            title="<?php echo $button_cart; ?>"
                                            onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                        <i class="flaticon-shopping232"></i>
                                    </button>
                                    <button class="btn btn-icon" type="button" data-toggle="tooltip"
                                            title="<?php echo $button_wishlist; ?>"
                                            onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                            class="fa fa-heart"></i></button>
                                    <button class="btn btn-icon" type="button" data-toggle="tooltip"
                                            title="<?php echo $button_compare; ?>"
                                            onclick="compare.add('<?php echo $product['product_id']; ?>');"><i
                                            class="fa fa-exchange"></i></button>
                                </div>
                                <div class="clear"></div>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                    class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>

                            </div>
                            <div class="col-sm-12">
                                <div class="quickview_description description">
                                    <?php echo $product['description1'];?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php if ($product['special']) { ?>
                <div class="sale"><?php echo $text_sale; ?></div>
                <?php } ?>
                <div class="image">
                    <a href="<?php echo $product['href']; ?>"><img alt="<?php echo $product['name']; ?>"
                                                                   title="<?php echo $product['name']; ?>"
                                                                   class="img-responsive lazy"
                                                                   data-src="<?php echo $product['thumb']; ?>"
                                                                   src="image/catalog/preload.gif"/></a>
                </div>
                <div class="caption">
                    <?php if ($product['price']) { ?>
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span
                            class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <div class="name">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </div>
                    <div class="description"><?php echo $product['description']; ?></div>

                </div>
                <div class="cart-button">
                    <button class="btn btn-add" type="button" data-toggle="tooltip"
                            title="<?php echo $button_cart; ?>"
                            onclick="cart.add('<?php echo $product['product_id']; ?>');">
                        <i class="flaticon-shopping232"></i>
                    </button>
                    <button class="btn btn-icon" type="button" data-toggle="tooltip"
                            title="<?php echo $button_wishlist; ?>"
                            onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                            class="flaticon-favorite22"></i></button>
                    <button class="btn btn-icon" type="button" data-toggle="tooltip"
                            title="<?php echo $button_compare; ?>"
                            onclick="compare.add('<?php echo $product['product_id']; ?>');"><i
                            class="flaticon-attachment19"></i></button>
                    <a class="quickview quickview-latest btn" data-toggle="tooltip" title="<?php echo $text_quick; ?>"
                       rel="group" href="#quickview_<?php echo $f?>">
                        <i class="flaticon-tick7"></i>
                    </a>
                </div>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                        class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
        </div>
    </div>
</div>


