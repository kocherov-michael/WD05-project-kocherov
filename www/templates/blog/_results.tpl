<?php if ($_GET['result'] == 'postDeleted' ) {?>
	<div class="notification__error" data-notify-hide>
		Пост был удален!
	</div>
<?php } ?>
<?php if ($_GET['result'] == 'postCreated' ) {?>
	<div class="notification__success" data-notify-hide>
		Новый пост добавлен!
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'postUpdated' ) {?>
	<div class="notification__success" data-notify-hide>
		Пост успешно отредактирован!
	</div>
<?php } ?>
