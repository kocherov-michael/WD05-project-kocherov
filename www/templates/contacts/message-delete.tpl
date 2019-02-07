<?php 
// echo "<pre>";
// echo print_r($_POST);
// echo "</pre>";
?>

<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Удалить сообщение</div>


				<form action="<?=HOST?>message-delete?id=<?=$message['id']?>" method="POST" class="post-add-form">
					<div class="post-add-form__name">
				<p>Вы действительно хотите удалить это сообщение?</p>
					</div>
					<div class="post-add-form-button">
						<input class="button button-delete" type="submit" value="Удалить" name="mesageDelete" />
						<div class="post-add-form-button__cancel">
							<!-- <input class="button" type="reset" name="cansel" value="Отмена" /> -->
							<a class="button" href="<?=HOST?>messages" >Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>