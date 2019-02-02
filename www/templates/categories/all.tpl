<div class="sticky-footer-content">
	<div class="container user-content pt-50 pb-120">
		<?php  
		// echo "<pre>";
		// echo print_r($cats);
		// echo "</pre><br>";
		if( isset($_GET['result'])) {
			include ROOT . "templates/categories/_results.tpl";
		}

		?>
		<div class="blog__header mb-50 mt-30">
			<span>Категории блога</span>
			<a class="button button-edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
		</div>
	
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">id</th>
					<th scope="col">Название</th>
					<th scope="col">Редактировать</th>
					<th scope="col">Удалить</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($cats as $cat): ?>
				<tr>
					<th><?=$cat['id']?></th>
					<td><?=$cat['cat_title']?></td>
					<td><a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a></td>
					<td><a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a></td>
				</tr>
				<?php endforeach ?>
			</tbody>
		</table>
		
	</div>
</div>
