<?php 
function dataFromPost($fieldName){
	//Для доступа к переменной $about объявляем её глобальной
	global  $about;
	echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $about[$fieldName];
}
 ?>
<div class="sticky-footer-content">
	<div class="container user-content pt-45 pl-20">
		<div class="row">
			<div class="offset-md-1 col-md-10">
				<h1 class="title-1">Редактировать - Обо Мне</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>

				<form class="edit-about-me-form" action="edit-text" method="POST" enctype="multipart/form-data">
					<div class="row edit-about-me-form__row">
						<div class="col">
							<label class="label">Имя, фамилия
								<input 
									class="input-text" 
									type="text" 
									placeholder="Введите имя и фамилию" 
									name="name" 
									value="<?php dataFromPost('name'); ?>" 
									/>
							</label>
						</div>
					</div>
					<div class="row edit-about-me-form__row">
						<div class="col">
							<div class="load-file-title">
								Фотография
							</div>
							<div class="load-file-opis">
								Изображение jpg или png, размером больше чем 100х100 пикселей и весом до 2Мб.
							</div>
							<div class="load-file-fieldset">
								<input class="inputfile" id="file-2" type="file" name="photo" data-multiple-caption="{count} файлов выбрано" multiple="" />
								<label for="file-2">Выбрать файл</label>
								<span>Файл не выбран</span>
							</div>
							<div class="edit-about-me__avatar mt-15">
								<div class="avatar avatar--big">
									<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="Фотография" /></div>
							</div>
						</div>
					</div>
					<div class="row edit-about-me-form__row">
						<div class="col">
							<label class="label"><span class="mb-10">Информация на главной</span>
								<textarea id="ckEditor" class="textarea" type="text" placeholder="Введите текст" name="description"><?php dataFromPost('description'); ?></textarea>
								<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
							</label>
						</div>
					</div>
					<div class="row edit-user-profile-form__row">
						<input class="button button-save" type="submit" value="Сохранить" name="textUpdate" />
						<div class="form-button-cancel ml-20">
							<a class="button" href="<?=HOST?>about">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>