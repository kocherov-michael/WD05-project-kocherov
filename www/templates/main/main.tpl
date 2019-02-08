<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>

<div class="hr-line"></div>
<div class="sticky-footer-content ">
	<div class="container user-content pt-50 pl-0 pr-0">
		<div class="blog__header works__header mb-50 mt-30">
			<span><strong>Новые <a href="<?=HOST?>portfolio" target="_blank">работы</a></strong></span>
			<?php if ( isAdmin() ) { ?>
			<a class="button button-edit" href="<?=HOST?>portfolio/portfolio-new">Добавить работу</a>
			<?php } ?>
		</div>
		<div class="row blog-card-row">
		<?php foreach ($works as $work) {?>
			<?php include ROOT . "templates/_parts/_portfolio-card.tpl" ?>
		<?php }  ?>
		</div>
	</div>
</div>
<div class="hr-line"></div>
<div class="sticky-footer-content mb-90">
			<div class="container user-content pt-50 pl-0 pr-0">
				<div class="blog__header works__header mb-50 mt-30">
					<span><strong>Новые записи в <a href="<?=HOST?>blog" target="_blank">блоге</a></strong></span>
					<?php if ( isAdmin() ) { ?>
					<a class="button button-edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
					<?php } ?>
				</div>
				<div class="row blog-card-row">
				<?php foreach ($posts as $post) {?>
					<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
				<?php }  ?>

				</div>
			</div>
		</div>



