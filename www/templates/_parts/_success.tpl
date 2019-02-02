<?php 
	foreach ($success as $item){
		if( count($item) == 1){?>
			<!-- однострочная ошибка -->
			<div class="notification__success"><?=$item['title']?></div>
<?php	}else if ( count($item) == 2){?>
			<!-- многострочная ошибка -->
			<div class="notification__error--text">
				<div class="notification__success notification__success--top-border-radius"><?=$item['title']?></div>
				<div class="notification__error--added-text"><?=$item['desc']?></div>
			</div>
<?php
		}
	}
 ?>