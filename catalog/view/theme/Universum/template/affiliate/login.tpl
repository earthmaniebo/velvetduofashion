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
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  
  <?php echo $text_description; ?>
  <div class="login-content">
    <div class="left">
      <h3><?php echo $text_new_affiliate; ?></h3>
      <div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <div class="right">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <h3><?php echo $text_returning_affiliate; ?></h3>
        <div class="content">
          <p><?php echo $text_i_am_returning_affiliate; ?></p>
          <b><?php echo $entry_email; ?></b><br />
          <input type="text" name="email" value="<?php echo $email; ?>" />
          <br />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="<?php echo $password; ?>" />
          <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
    <div class="clear"></div>
  </div>
  <?php echo $content_bottom; ?></div>
  
  </div>
<?php echo $footer; ?>