<div class="sticky-footer-content">
	<div class="container user-content pt-45 pl-0">
		<div class="row">
			<div class="offset-md-1 col-md-8">
				<h1 class="title-1">Редактировать - Технологии</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>

				<form class="technology-edit-form" action="edit-skills" method="POST">
					<div class="row technology-edit-form__row">

						<?php function skillItem($name, $title){ 
							global $skills ?>
							<div class="col-md-3 technology-edit-form__item">
								<label class="label"><?=$title ?>
									<input 
										class="input-text input-text--width" 
										type="text" 
										placeholder="0" 
										name="<?=$name?>" 
										value="<?=$skills[$name]?>" 
										/>
								</label>
								<div class="percent-sign">
									<span class="percent-sign__item">%</span>
								</div>
							</div>
						<?php  }  ?>
						<?php skillItem('html', 'HTML5' ); ?>
						<?php skillItem('css', 'CSS3' ); ?>
						<?php skillItem('js', 'JS' ); ?>
						<?php skillItem('jquery', 'jQuery' ); ?>
					</div>
					<div class="row technology-edit-form__row">
						<?php skillItem('php', 'PHP' ); ?>
						<?php skillItem('mysql', 'MySql' ); ?>
					</div>
					<div class="row technology-edit-form__row mb-30">
						<?php skillItem('git', 'Git' ); ?>
						<?php skillItem('gulp', 'Gulp' ); ?>
						<?php skillItem('npm', 'Npm' ); ?>
						<?php skillItem('yarn', 'Yarn' ); ?>
					</div>
					<div class="row technology-edit-form__row">
							<input class="button button-save ml-15" type="submit" value="Сохранить" name="skillsUpdate" />
						<div class="technology-edit-form__button-cancel ml-20">
							<a class="button" href="<?=HOST?>about">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>