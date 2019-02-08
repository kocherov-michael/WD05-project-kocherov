<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Редактировать пост</div>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>
				<?php if (@$_GET['result'] == 'pictureDeleted' ) {?>
					<div class="notification__error" data-notify-hide>
						Изображение удалено!
					</div>
				<?php } ?>

				<form action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data" class="post-add-form">
					<div class="post-add-form__name">
						<label class="label">Название
							<input class="input-text" type="text" placeholder="Введите название" name="postTitle" value="<?=(isset($postPostTitle)) ? $postPostTitle : $post['title'] ?>" />
						</label>
					</div>

					<div class="post-add-form__file">
						<label class="label">Категория
							<select name="postCat" class="select">
								<?php foreach ($cats as $cat): ?>
								<option 
									value="<?=$cat['id']?>"
									<?php echo ($post['cat'] == $cat['id'] ) ? "selected" : ""; ?>
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
					<?php if ($post['post_img_small'] != "") { ?>
						<div class="load-file-wrap">
							<div class="load-file-wrap-img">
								<img class="load-file-wrap-img__image" src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="foto" />
							</div>
							<div class="load-file-wrap__button">
								<input class="button button-delete button-small" type="submit" name="pictureDelete" value="Удалить">
							</div>
						</div>
					<?php } ?>
					</div>
					<div class="post-add-form__textarea">
						<label class="label"><span class="mb-10">Содержание</span>
							<textarea id="ckEditor" class="textarea" type="text" placeholder="Введите описание" name="postText" /><?=(isset($postPostText)) ? $postPostText : $post['text'] ?></textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
						</label>
					</div>
					<div class="post-add-form-button">
						<input class="button button-save" type="submit" value="Сохранить" name="postUpdate" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>blog" >Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
