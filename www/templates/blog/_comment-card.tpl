<div class="two-comments-container">
	<div class="two-comments-container__avatar">
		<div class="avatar avatar--small">
		<?php if (isset($comment['avatar_small'])): ?>
			<img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small'] ?>" alt="<?=$comment['name'] ?> <?=$comment['secondname'] ?>" />
		<?php endif ?>
		</div>
	</div>
	<div class="two-comments-container-block">
		<div class="two-comments-container-block-wrap">
			<div class="two-comments-container-block-wrap__name">
			<?php if($comment['name'] != "" || $comment['secondname'] != ""){ ?>
				<?=$comment['name'] ?>
				<?=$comment['secondname'] ?>
			<?php } else { ?>
				Аноним
			<?php } ?>
			</div>
			<div class="two-comments-container-block-wrap__date">
				<i class="far fa-clock two-comments-container-block-wrap-icon"></i>
				<?=$comment['date_time'] ?>
			</div>
		</div>
		<div class="two-comments-container-block__message">
			<?=$comment['text'] ?>
		</div>
	</div>
</div>

