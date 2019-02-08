<?php 
// echo "<pre>";
// print_r($work);
// echo "</pre>";
 ?>
<div class="logo-wrapper">
	<div class="logo">
		<div class="logo__icon"><span class="ml-0"><i class="far fa-paper-plane"></i></span><span>Digital Lifestyle</span></div>
		<div class="logo__text"><span>Сайт IT специалиста</span></div>
	</div>
	<div class="sticky-footer-content">
		<div class="container user-content pt-85">
			<div class="row">
				<div class="blog-post col-md-10 offset-md-1 pl-0 pr-0">
					<div class="blog-post-heading-wrapper">
						<div class="blog-post__heading-button">
							<h1 class="blog-post__title title-1"><?=$work['title']?></h1>
							<?php if ( isAdmin() ) { ?>
							<div class="blog__button--edit">
								<a class="button button-edit" href="<?=HOST?>portfolio/portfolio-edit?id=<?=$work['id']?>">Редактировать</a>
								<a class="button button-delete ml-15" href="<?=HOST?>portfolio/portfolio-delete?id=<?=$work['id']?>">Удалить</a>
							</div>
							<?php } ?>
						</div>
						<div class="blog-post__info mb-50">
							<div class="blog-post__info-name"><?=$work['name']?> <?=$work['secondname']?></div>
							<div class="blog-post__info-category"><a href="#!"><?=$work['cat_title']?></a></div>
							<?php if (isset($work['update_time'])){ ?>
								<div class="blog-post__info-date">Обновлено <? echo rus_date("j F Y H:i", strtotime($work['update_time'])); ?>
								</div>
							<?php } else { ?>
								<div class="blog-post__info-date"><? echo rus_date("j F Y H:i", strtotime($work['date_time'])); ?></div>
							<?php } ?>
						</div>
					</div>
					<?php if ($work['post_img'] != ''): ?>
						<img class="blog-post__image" src="<?=HOST?>usercontent/portfolio/<?=$work['post_img']?>" alt="<?=$work['title']?>" />
					<?php endif ?>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="description-progect mt-20">
	<div class="sticky-footer-content">
		<div class="container user-content">
			<div class="row">
				<div class="col-md-5 offset-md-1 pl-0 description-about">
					<h3 class="title-3">Кратко о проекте</h3>
					<div class="description-progect__text">
						<?=$work['text']?>
					</div>
					<?php if ($work['result'] != ''): ?>
					<h3 class="title-3">Результат</h3>
					<div class="description-progect__result">
						<?=$work['result']?>
					</div>
					<?php endif ?>
				</div>
				<div class="col-md-5 offset-md-1 pl-0 description-about">
					<h3 class="title-3 description-technologies__title">Технологии</h3>
					<div class="description-progect__result">
						<?=$work['technologies']?>
					</div>
					<?php if ($work['project_link'] != ''): ?>
					<h3 class="title-3 description-technologies__title">Ссылка на проект</h3><a href="https://<?=$work['project_link']?>" target="_ blank"><?=$work['project_link']?></a>
					<?php endif ?>
					<?php if ($work['github_link'] != ''): ?>
					<h3 class="title-3 description-technologies__title description-technologies__title--margin">Код на github</h3><a href="https://<?=$work['github_link']?>" target="_ blank"><?=$work['github_link']?></a>
					<?php endif ?>
				</div>
				<div class="col-md-10 offset-md-1 buttons-navigation mt-20">
					<div class="button__arrow-wrap">
					<?php if ( $prevId != '' ) { ?>
						<a class="button button-backward" href="<?=HOST?>portfolio/portfolio?id=<?=$prevId?>">Назад</a>
						<i class="fas fa-arrow-left"></i>
					<?php } ?>
					</div>
					<div class="button__arrow-wrap">
					<?php if ( $nextId != '' ) { ?>
						<a class="button button-forward" href="<?=HOST?>portfolio/portfolio?id=<?=$nextId?>">Вперед</a>
						<i class="fas fa-arrow-right "></i>
					<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

