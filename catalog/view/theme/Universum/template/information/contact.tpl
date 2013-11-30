<?php
$this->language->load('Universum_custom/Universum');
$text_toggle = $this->language->get('text_toggle');
$text_question = $this->language->get('text_question');
$text_facebook = $this->language->get('text_facebook');
$text_twitter = $this->language->get('text_twitter');
$text_payment = $this->language->get('text_payment');
$text_skype_click = $this->language->get('text_skype_click');
$text_hours = $this->language->get('text_hours');
$text_map = $this->language->get('text_map');
?>
<?php echo $header; ?>
<div class="title-holder">
<div class="inner">
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1 class="heading_title"><?php echo $heading_title; ?></h1>
</div>
</div>
<div class="inner">
<?php echo $column_left; ?><?php echo $column_right; ?>
  <div id="content"><?php echo $content_top; ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <div class="contact-info">
      <div class="content">
      <div class="one_third"><span class="address"><?php echo $text_address; ?></span><br />
        
        <span style="line-height:24px;"><b><?php echo $store; ?></b><br /><?php echo $address; ?></span>
        </div>
      <div class="one_third">
        <?php if ($telephone) { ?>
        <span class="phone"><?php echo $text_telephone; ?></span><br />
        <?php echo $telephone; ?><br />
        <br />
        <?php } ?>
        <?php if ($fax) { ?>
        <span class="fax"><?php echo $text_fax; ?></span><br />
        <?php echo $fax; ?>
        <?php } ?>
      </div>
      <div class="one_third last">
        <span class="hours"><?php echo $text_hours; ?></span>
        <br />
        <?php if(($this->config->get('UniversumControl_footer_time') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?><?php echo $this->config->get('UniversumControl_footer_time') ?><?php } ?><br /><br />
        
        
        <?php if(($this->config->get('UniversumControl_skype') != null) && ($this->config->get('UniversumControl_status') == '1')){ ?>
        <span class="skype">Skype</span>
        <br />
        <!--
Skype 'My status' button
http://www.skype.com/go/skypebuttons
-->
<script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
<a href="skype:<?php echo $this->config->get('UniversumControl_skype') ?>?<?php echo $this->config->get('UniversumControl_skype_mode') ?>"><img src="http://mystatus.skype.com/balloon/<?php echo $this->config->get('UniversumControl_skype') ?>" style="border: none;" width="150" height="60" alt="My status" /></a>
<?php } ?>
        
        
      </div>
      <div class="clear"></div>
      <?php if(($this->config->get('UniversumControl_map') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
         
      <span class="map"><?php echo $text_map; ?></span>
      <div class="map_holder">
      
      <?php echo html_entity_decode($this->config->get('UniversumControl_map')); ?>
      
      
      </div>
      <?php } ?>
    </div>
    </div>
      <h2 class="heading_title"><span><?php echo $text_contact; ?></span></h2>
    <div class="content">
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_email; ?></b><br />
    <input type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_enquiry; ?></b><br />
    <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br /><br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
    </form>
    <?php echo $content_bottom; ?></div>
    
</div>
<?php echo $footer; ?>