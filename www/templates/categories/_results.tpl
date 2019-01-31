<?php if ($_GET['result'] == 'catCreated' ) {?>
	<div class="notification__success" data-notify-hide>
		Категория успешно добавлена!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'catUpdated' ) {?>
	<div class="notification__success" data-notify-hide>
		Категория успешно отредактирована!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'catDeleted' ) {?>
	<div class="notification__error" data-notify-hide>
		Категория успешно удалена!
	</div>
<?php } ?>
