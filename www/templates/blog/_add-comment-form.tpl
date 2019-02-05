<?php if ( isLoggedIn() ) { ?>
	<div class="comment mt-35 mb-120">
		<div class="leave-comment-title">Оставить комментарий</div>
		<div class="leave-comment">
			<div class="leave-comment-avatar">
				<div class="avatar avatar--small">
					<?php if (isset($_SESSION['logged_user']['avatar_small'])): ?>
					<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small'] ?>" alt="<?=$_SESSION['logged_user']['name'] ?> <?=$_SESSION['logged_user']['secondname'] ?>" />
					<?php endif ?>
				</div>
			</div>
			<form class="leave-comment-form" id="commentForm" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
				<div class="leave-comment-form__name">
					<?=$_SESSION['logged_user']['name'] ?> 
					<?=$_SESSION['logged_user']['secondname'] ?>
				</div>
				<div class="notify notification__error mt-0" style="display: none;" data-error-comment-empty>
					<!-- Комментарий не может быть пустым. -->
				</div>
				<div class="mb-10">
					<textarea class="textarea" type="text" placeholder="Присоединиться к обсуждению..." name="commentText" data-textarea-comment></textarea>
				</div>
				<div class="mb-10">
					<input class="button" type="submit" value="Опубликовать" name="addComment" data-add-comment />
				</div>
			</form>
		</div>
	</div>
<?php } else { ?>
	<div class="comment__register text-center">
		<a href="<?=HOST?>login">Войдите</a> или 
		<a href="<?=HOST?>registration">зарегистрируйтесь</a>
		<br />чтобы оставить комментарий
	</div>
<?php } ?>