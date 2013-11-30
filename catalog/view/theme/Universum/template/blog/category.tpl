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
<div id="content">
   <?php echo $content_top; ?>
   
   
   <div id="blogCatArticles" class="<?php echo $column . ' ' . $suffix; ?>">
      <?php if ($categories || $catDescription) { ?>
         <div id="blogCategory">
            <?php if ($catDescription) { ?>
               <?php if ($catImage) { ?>
                  <img class="imageFeatured" src="<?php echo $catImage; ?>" alt="<?php echo $heading_title; ?>"/>
               <?php } ?>
               <?php echo $catDescription; ?>
            <?php } ?>
            <?php if ($categories) { ?>
               <h4><?php echo $text_subcategory; ?></h4>
               <ul>
                  <?php foreach ($categories as $category) { ?>
                     <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
               </ul>
            <?php } ?>
         </div>
      <?php } ?>
		
      <?php if ($articles) { ?>
         <?php foreach ($articles as $article) { ?>
            <div class="articleCat" itemscope itemtype="http://schema.org/Article">
               <div class="articleHeader">
    <h2 itemprop="name" class="heading_title"><a href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>" itemprop="url"><?php echo $article['title']; ?></a></h2>
                  <?php if ($article['art_infoName'] || $article['art_infoCategory'] || $article['art_infoDate']) { ?>
                     <span>
                        <?php echo $article['art_infoName'] . $article['art_infoCategory'] . $article['art_infoDate']; ?>
                        <?php if ($article['art_infoName'] || $article['art_infoCategory'] || $article['art_infoDate']) { ?>. <?php }?>
                     </span>
                  <?php }?>
               </div>
               <div class="articleContent">
                  <?php if ($article['image']) { ?>
                     <a class="imageFeaturedLink" href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>" itemprop="url" style="height:<?php echo $article['image_height'] + 25; ?>px;">
								<img class="imageFeatured" src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>" itemprop="image" />
							</a>
                  <?php } ?>
                  <span class="clearfix" itemprop="description"><?php echo $article['description']; ?></span>
                  <div class="readMore">
                     
                     <span class="more"><a class="r_more" href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>"><?php echo $read_more; ?></a></span>
                     <?php if ($article['comments'] && $article['art_infoComment']) { ?>
                        <span class="comment"><a href="<?php echo $article['comments_href']; ?>#articleComments" title="<?php echo $article['comments']; ?>"><?php echo $article['comments']; ?></a></span>
                     <?php } ?>
                  </div>
               </div>
            </div>
         <?php } ?>
      <?php } ?>
   </div>
   
   <div class="pagination"><?php echo $pagination; ?></div>
  
   <?php echo $content_bottom; ?>

<script type="text/javascript"><!--
$(document).ready(function() {
<?php if (strpos($column, 'equalHeight') !== false) { ?>
	$('.equalHeight .articleCat').equalHeight();
<?php } else { // fallback compatibility ?>
	$('.blogCol2 .articleCat').equalHeight();
	$('.blogCol3 .articleCat').equalHeight();
	$('.blogCol4 .articleCat').equalHeight();
<?php } ?>
});
(function($) {
	$.fn.equalHeight = function(){
		return this.height( Math.max.apply(this, $.map( this , function(e){
			return $(e).height() 
		}) ) );
	};
})(jQuery)
//--></script>
</div>
</div>
<?php echo $footer; ?> 