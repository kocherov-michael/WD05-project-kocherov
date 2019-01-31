<?php
//  echo "<pre>";
// echo print_r($posts);
// echo "</pre><br>"; 
?>
<div class="sticky-footer-content">
			<div class="container user-content pt-80 pl-0 pr-0">
				<div class="blog__header mb-50">
					<span>Блог веб-разработчика</span>
					<?php if (isset($_SESSION['login']) && $_SESSION['login'] == '1'): ?>
					<a class="button button-edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
					<?php endif ?>
				</div>
				<div class="row blog-card-row">
				<?php foreach ($posts as $post) {?>
					<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
				<?php }  ?>

				</div>
			</div>
		</div>