<?php if ($_GET['result'] == 'postDeleted' ) {?>
	<div class="notification__error" data-notify-hide>
		Работа была удалена!
	</div>
<?php } ?>
<?php if ($_GET['result'] == 'postCreated' ) {?>
	<div class="notification__success" data-notify-hide>
		Новая работа добавлена!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'postUpdated' ) {?>
	<div class="notification__success" data-notify-hide>
		Работа успешно отредактирована!
	</div>
<?php } ?>
