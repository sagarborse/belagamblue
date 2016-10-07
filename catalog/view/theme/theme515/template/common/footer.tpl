<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="footer-line"></div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4">
                <?php if ($informations) { ?>
                <div class="footer_box">
                    <h5><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                        <li>
                            <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4">
                <div class="footer_box">
                    <h5><?php echo $text_service; ?></h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4">
                <div class="footer_box">
                    <h5><?php echo $text_extra; ?></h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $special; ?>"><?php echo $text_special; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4">
                <div class="footer_box">
                    <h5><?php echo $text_account; ?></h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-lg-2 col-md-2 col-sm-4 border">
                <div class="footer_box">
                    <h5><?php echo $text_follow; ?></h5>
                    <ul class="list-unstyled social">
                        <li>
                            <a href="//www.facebook.com/"><span class="fa fa-facebook"></span><?php echo $text_fb; ?>
                            </a>
                        </li>
                        <li>
                            <a href="//www.twitter.com/"><span class="fa fa-twitter"></span><?php echo $text_twi; ?></a>
                        </li>
                        <li>
                            <a href="//plus.google.com/"><span class="fa fa-google-plus"></span><?php echo $text_gp; ?></a>
                        </li>
                        <li>
                            <a href="//www.youtube.com/"><span class="fa fa-youtube"></span><?php echo $text_yt; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="footer-line"></div>
                </div>
            </div>
            <img src="catalog/view/theme/theme515/image/footer-logo.png" alt=""/><?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
        </div>
    </div>

</footer>
<script src="catalog/view/theme/theme515/js/livesearch.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme515/js/script.js" type="text/javascript"></script>
</div>

</body></html>