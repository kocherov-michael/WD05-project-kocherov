<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Редактировать работу</div>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>
				<?php if (@$_GET['result'] == 'pictureDeleted' ) {?>
					<div class="notification__error" data-notify-hide>
						Изображение удалено!
					</div>
				<?php } ?>

				<form action="<?=HOST?>portfolio/portfolio-edit?id=<?=$work['id']?>" method="POST" enctype="multipart/form-data" class="post-add-form">
					<div class="post-add-form__name">
						<label class="label">Название
							<input class="input-text" type="text" placeholder="Введите название" name="workTitle" value="<?=(isset($_POST['workTitle'])) ? $_POST['workTitle'] : $work['title'] ?>" />
						</label>
					</div>

					<div class="post-add-form__file">
						<label class="label">Категория
							<select name="workCat" class="select">
								<?php foreach ($cats as $cat): ?>
								<option 
									value="<?=$cat['id']?>"
									<?php echo ($work['cat'] == $cat['id'] ) ? "selected" : ""; ?>
								>
									<?=$cat['cat_title']?></option>
								<?php endforeach ?>
								
							</select>
						</label>
					</div>


					<div class="post-add-form__file">
						<div class="load-file-title">Изображение </div>
						<div class="load-file-opis">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
						<div class="load-file-fieldset">
							<input class="inputfile" id="file-2" type="file" name="postImg" data-multiple-caption="{count} файлов выбрано" multiple="" />
							<label for="file-2">Выбрать файл</label>
							<span>Файл не выбран</span>
						</div>
					<?php if ($work['post_img_small'] != "") { ?>
						<div class="load-file-wrap">
							<div class="load-file-wrap-img">
								<img class="load-file-wrap-img__image" src="<?=HOST?>usercontent/portfolio/<?=$work['post_img_small']?>" alt="foto" />
							</div>
							<div class="load-file-wrap__button">
								<input class="button button-delete button-small" type="submit" name="pictureDelete" value="Удалить">
							</div>
						</div>
					<?php } ?>
					</div>
					<div class="post-add-form__textarea">
						<label class="label"><span class="mb-10">Содержание</span>
							<textarea class="textarea" type="text" placeholder="Введите описание" name="workText" /><?=(isset($_POST['workText'])) ? $_POST['workText'] : $work['text'] ?></textarea>
						</label>
					</div>
					<div class="post-add-form__textarea">
						<label class="label"><span class="mb-10">Результат</span>
							<textarea class="textarea" type="text" placeholder="Введите описание" name="workResult"><?=(isset($_POST['workResult'])) ? $_POST['workResult'] : $work['result'] ?></textarea>
						</label>
					</div>
					<div class="post-add-form__textarea">
						<label class="label"><span class="mb-10">Технологии</span>
							<textarea class="textarea" type="text" placeholder="Введите описание" name="workTechnologies"><?=(isset($_POST['workTechnologies'])) ? $_POST['workTechnologies'] : $work['technologies'] ?></textarea>
						</label>
					</div>
					<div class="row mt-30">
						<div class="col-4">
							<label class="label">Ссылка на проект
								<input class="input-text" type="text" placeholder="Введите ссылку" name="projectLink" value="<?=(isset($_POST['projectLink'])) ? $_POST['projectLink'] : $work['project_link'] ?>">
							</label>
						</div>
						<div class="col-4">
							<label class="label">Ссылка на Github
								<input class="input-text" type="text" placeholder="Введите ссылку" name="githubLink" value="<?=(isset($_POST['githubLink'])) ? $_POST['githubLink'] : $work['github_link'] ?>">
							</label>
						</div>
					</div>
					<div class="post-add-form-button">
						<input class="button button-save" type="submit" value="Сохранить" name="workUpdate" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>portfolio" >Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
