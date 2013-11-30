<?php
$this->language->load('Universum_custom/Universum');
$text_toggle = $this->language->get('text_toggle');
$text_question = $this->language->get('text_question');
$text_facebook = $this->language->get('text_facebook');
$text_twitter = $this->language->get('text_twitter');
$text_twitter_follow = $this->language->get('text_twitter_follow');
$text_payment = $this->language->get('text_payment');
$text_skype_click = $this->language->get('text_skype_click');
?>

<div id="footer">
  <div class="inner inner_top">
    <?php if(($this->config->get('UniversumControl_facebook_id') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
    <div class="one_fourth column">
      <h4><?php echo $text_facebook; ?></h4>
      <script type="text/javascript">
      //<![CDATA[
            document.write('<fb:fan profileid="<?php echo $this->config->get('UniversumControl_facebook_id'); ?>" stream="0" connections="6" logobar="0" width="220" height="270" css="<?php echo HTTP_SERVER; ?>catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/facebook.css?57"></fb:fan>');
      //]]>
</script> 
    </div>
    <?php } ?>
    <?php if(($this->config->get('UniversumControl_twitter_id') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
    <div class="one_fourth column">
      <h4><?php echo $text_twitter; ?></h4>
      <a class="twitter_follow_link" href="http://twitter.com/<?php echo $this->config->get('UniversumControl_twitter_id') ?>"><?php echo $text_twitter_follow; ?></a>
      <div id="twitter_update_list"> </div>
      <script type="text/javascript">
jQuery(function($){
        $("#twitter_update_list").tweet({
          join_text: "auto",
          username: "<?php echo $this->config->get('UniversumControl_twitter_id') ?>",
          avatar_size: 50,
          count: 2,
          auto_join_text_default: "",
          auto_join_text_ed: "",
          auto_join_text_ing: "",
          auto_join_text_reply: "",
          auto_join_text_url: "",
          loading_text: "loading tweets..."
        });
      });
</script> 
    </div>
    <?php } ?>
    <div class="one_fourth column">
      <h4><?php echo $text_question; ?></h4>
      <?php if(($this->config->get('UniversumControl_footer_time') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <span class="footer_time"> <?php echo $this->config->get('UniversumControl_footer_time') ?> </span>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_footer_address') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <span class="footer_address"> <?php echo $this->config->get('UniversumControl_footer_address') ?> </span>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_footer_phone') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <span class="footer_phone"> <?php echo $this->config->get('UniversumControl_footer_phone') ?> </span>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_footer_fax') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <span class="footer_fax"> <?php echo $this->config->get('UniversumControl_footer_fax') ?> </span>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_skype') != null) && ($this->config->get('UniversumControl_status') == '1')){ ?>
      <span class="footer_skype"><a class="skype" href="skype:<?php echo $this->config->get('UniversumControl_skype') ?>?<?php echo $this->config->get('UniversumControl_skype_mode') ?>"><?php echo $text_skype_click; ?></a> </span>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_footer_mail') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <span class="footer_mail"> <?php echo $this->config->get('UniversumControl_footer_mail') ?> </span>
      <?php } ?>
    </div>
    <div class="one_fourth column">
      <h4><?php echo $text_extra; ?></h4>
      <ul class="footer_links">
        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
    </div>
    <div class="one_fourth last column">
    <h4>Follow us on Instagram</h4>
    <iframe src="http://widget.stagram.com/in/velvetduofashionsite/?s=50&w=3&h=4&b=1&p=5" allowtransparency="true" frameborder="0" scrolling="no" style="border:none;overflow:hidden;width:195px; height: 260px" ></iframe> <!-- Webstagram - web.stagram.com --> 
    <br>
    <iframe src="http://widget.stagram.com/follow/velvetduofashionsite" style="height:27px;" frameborder="0"></iframe>
    </div>
    <div class="clear"></div>
  </div>
  <div class="inner">
    <div class="one_half">
      <?php if(($this->config->get('UniversumControl_paypal') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="paypal_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_visa') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="visa_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_electron') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="electron_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_master') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="master_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_maestro') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="maestro_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_cirrus') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="cirrus_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_american') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="american_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_2checkout') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="two_checkout_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_delta') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="delta_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_discover') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="discover_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_google') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="google_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_moneybookers') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="moneybookers_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_sage') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="sage_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_solo') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="solo_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_switch') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="switch_icon cards_icon"></div>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_western') == '1') && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <div class="western_icon cards_icon"></div>
      <?php } ?>
    </div>
    <div class="one_half last">
      <?php if(($this->config->get('UniversumControl_seals') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
      <?php echo html_entity_decode($this->config->get('UniversumControl_seals')); ?>
      <?php } ?>
    </div>
    <div class="clear"></div>
  </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered">
  <div class="inner">
    <?php if(($this->config->get('UniversumControl_copyright') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
    <?php echo html_entity_decode($this->config->get('UniversumControl_copyright')); ?>
    <?php } else { ?>
    <?php echo $powered; ?>
    <?php } ?>
  </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
<div id="fb-root"></div>
<script type="text/javascript">
  window.fbAsyncInit = function() {
    FB.init({appId: '0c18007de6f00f7ecda8c040fb76cd90', status: true, cookie: true,
     xfbml: true});
  };
  (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol +
    '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
  }());
</script>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_responsive') == '1')){	?>
<script>
        selectnav('main_nav', {
  	label: ' MAIN MENU ',
  	nested: true,
	activeclass: 'selected',
  	indent: '-'
	});
</script>
<script>
        selectnav('topnav', {
  	label: ' CATEGORIES ',
  	nested: true,
	activeclass: 'selected',
  	indent: '-'
	});
</script>
<?php } ?>
</body></html>