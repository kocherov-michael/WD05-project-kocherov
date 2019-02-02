<?php 
	foreach ($errors as $error){
		if( count($error) == 1){?>
			<!-- однострочная ошибка -->
			<div class="notification__error"><?=$error['title']?></div>
<?php	}else if ( count($error) == 2){?>
			<!-- многострочная ошибка -->
			<div class="notification__error--text">
				<div class="notification__error notification__error--top-border-radius"><?=$error['title']?></div>
				<div class="notification__error--added-text"><?=$error['desc']?></div>
			</div>
<?php
		}
	}
 ?>