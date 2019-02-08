<div class="card-post">
	<div class="card-post__image mb-15">
		<?php if ($work->post_img_small != "") { ?>
			<img src="<?=HOST?>usercontent/portfolio/<?=$work->post_img_small?>" alt="<?=$work->title?>" />
			<?php } else {?>
			<img src="<?=HOST?>usercontent/blog-no-image.jpg<?=$work->post_img_small?>" alt="<?=$work->title?>" />
		<?php } ?>
	</div>
	<div class="card-post__title">
		<?=mbCutString($work->title, 41);?>
	</div>
	<a class="button" href="<?=HOST?>portfolio/portfolio?id=<?=$work->id?>">Читать</a>
</div>