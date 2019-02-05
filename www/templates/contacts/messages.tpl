<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-md-10 offset-md-1">
		<?php
		if( isset($_GET['result'])) {
			if ($_GET['result'] == 'messageDeleted' ) {?>
				<div class="notification__error" data-notify-hide>
					Сообщение успешно удалено!
				</div>
			<?php } 
		}
		?>
				<div class="title-1">Сообщения от посетителей</div>
				<?php 
					foreach ($messages as $message){
						include ROOT . "templates/contacts/message-card.tpl";
					} 
				?>
			</div>
		</div>
	</div>
</div>