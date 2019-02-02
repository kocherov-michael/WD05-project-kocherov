<?php 
// echo "<pre>";
// echo print_r($_POST);
// echo "</pre>";
?>

<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Добавить пост</div>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>

				<form action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data" class="post-add-form">
					<div class="post-add-form__name">
						<label class="label">Название
							<input class="input-text" type="text" placeholder="Введите название" name="postTitle" value=
								"<?=(isset($postPostTitle)) ? $postPostTitle : "" ?>" />
						</label>
					</div>

					<div class="post-add-form__file">
						<label class="label">Категория
							<select name="postCat" class="select">
								<?php foreach ($cats as $cat): ?>
								<option value="<?=$cat['id']?>"><?=$cat['cat_title']?></option>
									
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
					</div>
					<div class="post-add-form__textarea">
						<label class="label"><span class="mb-10">Содержание</span>
							<textarea id="ckEditor" class="textarea" type="text" placeholder="Введите описание" name="postText">
								<?=(isset($postPostText)) ? $postPostText : "" ?></textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
						</label>
					</div>
					<div class="post-add-form-button">
						<input class="button button-save" type="submit" value="Сохранить" name="postNew" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>blog" >Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
