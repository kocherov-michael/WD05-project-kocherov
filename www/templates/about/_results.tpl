<?php if ($_GET['result'] == 'jobDeleted' ) {?>
	<div class="notification__error mb-20" data-notify-hide>
		Запись успешно удалена!
	</div>
<?php } ?>
<?php if ($_GET['result'] == 'jobCreated' ) {?>
	<div class="notification__success mb-20" data-notify-hide>
		Запись успешно добавлена!
	</div>
<?php } ?>
