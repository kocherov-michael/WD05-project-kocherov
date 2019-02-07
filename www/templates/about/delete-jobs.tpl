<?php 
// echo "<pre>";
// echo print_r($_POST);
// echo "</pre>";
?>

<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Удалить место работы.</div>


				<form action="<?=HOST?>delete-jobs?id=<?=$job['id']?>" method="POST" class="post-add-form">
					<div class="post-add-form__name">
				<p>Вы действительно хотите удалить это место работы?</p>
					</div>
					<div class="post-add-form-button">
						<input class="button button-delete" type="submit" value="Удалить" name="jobDelete" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>edit-jobs" >Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>