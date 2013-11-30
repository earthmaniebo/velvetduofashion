<?php
//-----------------------------------------------------
// LatestNews Module for Universum Premium theme by Dimitar Koev 
// Copyright (C) 2012 Dimitar Koev. All Rights Reserved!
// Author: Dimitar Koev
// Author websites: http://www.althemist.com  /  http://www.dimitarkoev.com
// @license - Copyrighted Commercial Software                           
// support@althemist.com                         
//-----------------------------------------------------
?>
<?php
  $LatestNewsNnumber = count($LatestNews);
  $startLatestNews = 0;
  
  ?>
<?php if ($LatestNews) { ?>

<?php if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')){ ?>

	<div class="box">

  <h2 class="heading_title"><span>
  <?php if($customtitle) { ?>
				<?php echo $customtitle; ?>
                <?php } else { ?>
                <?php echo $heading_title; ?>
			<?php } ?>
  </span></h2>
  <a class="all_news" href="<?php echo $LatestNewslist; ?>"><?php echo $buttonlist; ?></a>
		
		<div class="box-content">
		<?php foreach ($LatestNews as $LatestNews_story) { ?>
        
			<div class="LatestNews-unit">
            <?php $image_feature = $this->model_tool_image->resize($LatestNews_story['thumb'],  190, 143); ?>
            <span class="news_module_image_holder">
            <span class="mask"></span>
            <a title="<?php echo $LatestNews_story['title']; ?>" href="<?php echo $LatestNews_story['href']; ?>"><?php echo $LatestNews_story['title']; ?></a><img src="<?php echo $image_feature; ?>" class="feat_img_small" alt="<?php echo $LatestNews_story['title']; ?>"/></span>
            <span><img src="catalog/view/theme/Universum/image/message-news.png" alt="Date posted" /> - <?php echo $LatestNews_story['posted']; ?></span>
				<?php if ($show_headline) { ?>
                
               
                <?php $newTitle = $LatestNews_story['title']; ?>
                
                	
                
					<h4><?php echo $newTitle; ?></h4>
				<?php } ?>
                
				<p><?php echo strip_tags($LatestNews_story['description']); ?>...</p>
                <a class="r_more" href="<?php echo $LatestNews_story['href']; ?>"><?php echo $text_more; ?></a>
				
			</div>  
    
		<?php } ?>
		</div>
        
	</div>
    
    <?php } else { ?>
    
    	<div class="box">
        <div class="box-heading">
  <?php if($customtitle) { ?>
				<?php echo $customtitle; ?>
                <?php } else { ?>
                <?php echo $heading_title; ?>
			<?php } ?>
</div>
        <div class="box-content">
    
		
		
		<?php foreach ($LatestNews as $LatestNews_story) { ?>
        
			<div class="LatestNews-unit">
				<?php if ($show_headline) { ?>
                
               
                <?php $newTitle = $LatestNews_story['title']; ?>
                
                	
                
					<h4><?php echo $newTitle; ?></h4>
				<?php } ?>
                 
				<span><img src="catalog/view/theme/Universum/image/message-LatestNews.png" alt="Date posted" /> - <?php echo $LatestNews_story['posted']; ?></span>
                <?php $image_feature = $this->model_tool_image->resize($LatestNews_story['thumb'],  40, 40); ?>
				<p><a title="<?php echo $LatestNews_story['title']; ?>" href="<?php echo $LatestNews_story['href']; ?>"><img src="<?php echo $image_feature; ?>" class="feat_img_small" alt="<?php echo $LatestNews_story['title']; ?>"/></a><?php echo strip_tags($LatestNews_story['description']); ?>...</p>
                <a class="r_more_right" href="<?php echo $LatestNews_story['href']; ?>"><?php echo $text_more; ?></a>
				
			</div>  
    
		<?php } ?>
        
		</div>
        
	</div>
    
    <?php } ?>

<?php } ?>