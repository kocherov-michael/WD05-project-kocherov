<div class="message mb-20">
	<div class="message-container">
		<div class="message-date-container">
			<div class="message-date">
				<?=$message->date_time?>
			</div>
			<div class="delete message-delete-button">
				<a class="button button-delete button-small" href="<?=HOST?>message-delete?id=<?=$message['id']?>">Удалить</a>
			</div>
		</div>
		<div class="message-author">
			<?php if ($message->name != '' ): ?>
				<div class="message-author--name">
					<?=$message->name?>
				</div>
			<?php endif ?>
			<a class="message-author--email" href="mailto:<?=$message->email?>" target="_blank"><?=$message->email?></a>
		</div>
		<?php if ($message->message != '' ): ?>
			<div class="message-text">
				<p><?=$message->message?></p>
			</div>
		<?php endif ?>
		<?php if ($message->message_file != '' ): ?>
			<div class="message-files">
				<div class="message-files--title">Прикрепленные файлы:</div>
				<a class="message-files--list" href="<?=HOST?>usercontent/upload_files/<?=$message->message_file?>" target="_blank">
					<?=$message->message_file_name_original?>
				</a>
			</div>
		<?php endif ?>
	</div>
</div>