<div class="sticky-footer-content mb-90">
			<div class="container user-content pt-50 pl-0 pr-0">
<?php
if( isset($_GET['result'])) {
	include ROOT . "templates/portfolio/_results.tpl";
}
?>
				<div class="blog__header mb-50 mt-30">
					<span>Мои работы</span>
					<?php if ( isAdmin() ) { ?>
					<a class="button button-edit" href="<?=HOST?>portfolio/portfolio-new">Добавить работу</a>
					<?php } ?>
				</div>
				<div class="row blog-card-row mb-0">
				<?php foreach ($works as $work) {?>
					<?php include ROOT . "templates/_parts/_portfolio-card.tpl" ?>
				<?php }  ?>
				</div>
				<div class="row">
					<div class="pagination">
						<?php 
						for ($page=1; $page <=$pagination['number_of_pages']; $page++) {
							$item_class = 'pagination__item';
							if ($pagination['page_number'] == $page) {
								$item_class = $item_class . ' pagination__item--active';
							}
							echo '<a href="'.HOST.'portfolio?page='.$page.'" class="'.$item_class.'">'.$page.'</a>';
						}
						 ?>
					</div>
				</div>
			</div>
		</div>