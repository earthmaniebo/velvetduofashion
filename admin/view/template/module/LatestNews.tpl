<?php
/*------------------------------------------------------------------------
//-----------------------------------------------------
// LatestNews Module for Universum Premium theme by Dimitar Koev 
// Copyright (C) 2012 Dimitar Koev. All Rights Reserved!
// Author: Dimitar Koev
// Author websites: http://www.althemist.com  /  http://www.dimitarkoev.com
// @license - Copyrighted Commercial Software                           
// support@althemist.com                         
//-----------------------------------------------------
-------------------------------------------------------------------------*/
?>

<?php echo $header; ?>
<div id="content">
	<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
	</div>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<div class="box">
    <div class="heading">
		<h1><?php echo $heading_title; ?></h1>
		<div class="buttons">
			<a onclick="location = '<?php echo $LatestNews; ?>';" class="button"><span><?php echo $button_LatestNews; ?></span></a>
			<a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a>
			<a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a>
		</div>
    </div>
    <div class="content">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<table class="form">
			<?php foreach ($languages as $language) { ?>
				<tr> 
					<td><?php echo $entry_customtitle; ?></td> 
					<td> 
					<input type="text" name="LatestNews_customtitle<?php echo $language['language_id']; ?>" id="LatestNews_customtitle<?php echo $language['language_id']; ?>" size="30" value="<?php echo ${'LatestNews_customtitle' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
				</tr>
			<?php } ?>
            <tr>
            <td>Facebook app ID:<br />
            <small>You must have a FB application ID in order to use FB comments on News!</small></td>
            <td><input type="text" name="facebook_comments_app_id" value="<?php echo $facebook_comments_app_id; ?>" /></td>
            </tr> 
				<tr style="display:none;"> 
					<td><?php echo $entry_header; ?></td> 
					<td> 
						
					<label for="LatestNews_header_1"><?php echo $entry_yes; ?></label> 
					<input type="radio" checked="checked" id="LatestNews_header_1" name="LatestNews_header" value="1" /> 
					<label for="LatestNews_header_0"><?php echo $entry_no; ?></label> 
					<input type="radio" id="LatestNews_header_0" name="LatestNews_header" value="0" /> 
					</td> 
				</tr>
				<tr style="display:none;"> 
					<td><?php echo $entry_icon; ?></td> 
					<td> 
						
					<label for="LatestNews_icon_1"><?php echo $entry_yes; ?></label> 
					<input type="radio" checked="checked" id="LatestNews_icon_1" name="LatestNews_icon" value="1" /> 
					<label for="LatestNews_icon_0"><?php echo $entry_no; ?></label> 
					<input type="radio" id="LatestNews_icon_0" name="LatestNews_icon" value="0" /> 
					</td> 
				</tr>
				<tr style="display:none;"> 
					<td><?php echo $entry_box; ?></td> 
					<td> 
						
					<label for="LatestNews_box_1"><?php echo $entry_yes; ?></label> 
					<input type="radio" id="LatestNews_box_1" name="LatestNews_box" value="1" /> 
					<label for="LatestNews_box_0"><?php echo $entry_no; ?></label> 
					<input type="radio" checked="checked" id="LatestNews_box_0" name="LatestNews_box" value="0" /> 
					</td> 
				</tr>
				
				<tr style="display:none;">
					<td><?php echo $entry_headline_module; ?></td>
					<td>
							<input type="radio" name="LatestNews_headline_module" value="1" checked="checked" /><?php echo $text_yes; ?>
							<input type="radio" name="LatestNews_headline_module" value="0" /><?php echo $text_no; ?>
						
					</td>
				</tr>
				<tr style="display:none;">
					<td><span class="required">*</span> <?php echo $entry_LatestNewspage_thumb; ?></td>
					<td>
						<input type="text" name="LatestNews_thumb_width" value="80" size="3" /> x
						<input type="text" name="LatestNews_thumb_height" value="80" size="3" />&nbsp;px
						<?php if ($error_LatestNewspage_thumb) { ?>
							<span class="error"><?php echo $error_LatestNewspage_thumb; ?></span>
						<?php } ?>
					</td>
				</tr>
				<tr style="display:none;">
					<td><span class="required">*</span> <?php echo $entry_LatestNewspage_popup; ?></td>
					<td>
						<input type="text" name="LatestNews_popup_width" value="500" size="3" /> x
						<input type="text" name="LatestNews_popup_height" value="500" size="3" />&nbsp;px
						<?php if ($error_LatestNewspage_popup) { ?>
							<span class="error"><?php echo $error_LatestNewspage_popup; ?></span>
						<?php } ?>
					</td>
				</tr>
				<tr style="display:none;">
					<td><?php echo $entry_LatestNewspage_addthis; ?></td>
					<td>
						
							<input type="radio" name="LatestNews_LatestNewspage_addthis" value="1" checked="checked" /><?php echo $text_yes; ?>
							<input type="radio" name="LatestNews_LatestNewspage_addthis" value="0" /><?php echo $text_no; ?>
					</td>
				</tr>
				<tr style="display:none;">
					<td><span class="required">*</span> <?php echo $entry_headline_chars; ?></td>
					<td><input type="text" name="LatestNews_headline_chars" value="800" size="3" />
						<?php if (isset($error_numchars)) { ?>
							<span class="error"><?php echo $error_numchars; ?></span>
						<?php } ?>
					</td>
				</tr>
				
			</table>
			
			<table id="module" class="list">
			<thead>
				<tr>
					<td class="left"><?php echo $entry_limit; ?></td>
					<td class="left"><?php echo $entry_headline; ?></td>
					<td class="left"><?php echo $entry_numchars; ?></td>
					<td class="left"><?php echo $entry_layout; ?></td>
					<td class="left"><?php echo $entry_position; ?></td>
					<td class="left"><?php echo $entry_status; ?></td>	
					<td class="left"><?php echo $entry_sort_order; ?></td>
					<td style="width: 150px;"></td>
				</tr>
			</thead>
            <?php $module_row = 0; ?>
            <?php foreach ($modules as $module) { ?>
            <tbody id="module-row<?php echo $module_row; ?>">
				<tr>
                <td class="left"><input type="text" name="LatestNews_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" size="1" /></td>
				<td class="left">
					<select name="LatestNews_module[<?php echo $module_row; ?>][headline]">
                    <?php if ($module['headline']) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
					</select>
				</td>
                <td class="left"><input type="text" name="LatestNews_module[<?php echo $module_row; ?>][numchars]" value="<?php echo $module['numchars']; ?>" size="3" /></td>
					<?php if (isset($error_module_chars[$module_row])) { ?>
						<span class="error"><?php echo $error_module_chars[$module_row]; ?></span>
					<?php } ?>
				</td>
                <td class="left">
					<select name="LatestNews_module[<?php echo $module_row; ?>][layout_id]">
                    <?php foreach ($layouts as $layout) { ?>
                    <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
						<option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                    <?php } else { ?>
						<option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
					</select>
				</td>
                <td class="left">
					<select name="LatestNews_module[<?php echo $module_row; ?>][position]">
                    <?php if ($module['position'] == 'content_top') { ?>
                    <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                    <?php } else { ?>
                    <option value="content_top"><?php echo $text_content_top; ?></option>
                    <?php } ?>
                    <?php if ($module['position'] == 'content_bottom') { ?>
                    <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                    <?php } else { ?>
                    <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                    <?php } ?>
                    <?php if ($module['position'] == 'column_left') { ?>
                    <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                    <?php } else { ?>
                    <option value="column_left"><?php echo $text_column_left; ?></option>
                    <?php } ?>
                    <?php if ($module['position'] == 'column_right') { ?>
                    <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                    <?php } else { ?>
                    <option value="column_right"><?php echo $text_column_right; ?></option>
                    <?php } ?>
					</select>
				</td>
                <td class="left">
					<select name="LatestNews_module[<?php echo $module_row; ?>][status]">
                    <?php if ($module['status']) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
					</select>
				</td>
                <td class="center"><input type="text" name="LatestNews_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
                <td class="center"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
				</tr>
            </tbody>
            <?php $module_row++; ?>
            <?php } ?>
            <tfoot>
				<tr>
                <td colspan="7"></td>
                <td class="center"><a onclick="addModule();" class="button"><span><?php echo $button_add_module; ?></span></a></td>
				</tr>
            </tfoot>
        </table>
      </form>
    </div>
	</div>
	<br>
		<div style="text-align:center; color:#555;">LatestNews v<?php echo $LatestNews_version; ?></div>
</div>

<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><input type="text" name="LatestNews_module[' + module_row + '][limit]" value="5" size="1" /></td>';
	html += '    <td class="left"><select name="LatestNews_module[' + module_row + '][headline]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="left"><input type="text" name="LatestNews_module[' + module_row + '][numchars]" value="" size="3" /></td>';
	html += '    <td class="left"><select name="LatestNews_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="LatestNews_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="LatestNews_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="center"><input type="text" name="LatestNews_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="center"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script>
<?php echo $footer; ?>
