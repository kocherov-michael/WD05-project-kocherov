<div class="sign-in-user">
	<?php 
		if ($_SESSION['logged_user']['avatar_small'] != "") {?>
		<div class="avatar user__avatar">
			<div class="avatar--small">
				<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name'] ?> <?=$_SESSION['logged_user']['secondname'] ?>"/>
			</div>
		</div>
	<?php } ?>
	<div class="user__desc">
		<div class="user__text">
			<span class="name">
				<?=$_SESSION['logged_user']['name']?> 
				<?=$_SESSION['logged_user']['secondname']?>
			</span>
			<span class="desc">Пользователь</span>
		</div>
		<div class="user__buttons">
			<a class="button button-profile" href="<?=HOST?>profile">Профиль</a>
			<a class="button button-profile" href="<?=HOST?>logout">Выход</a></div>
	</div>
</div>