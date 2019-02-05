<div class="sticky-footer-content mb-90">
			<div class="container user-content pt-50 pl-0 pr-0">
<?php
//  echo "<pre>";
// echo print_r($posts);
// echo "</pre><br>"; 
if( isset($_GET['result'])) {
	include ROOT . "templates/blog/_results.tpl";
}
?>
				<div class="blog__header mb-50 mt-30">
					<span>Блог веб-разработчика</span>
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