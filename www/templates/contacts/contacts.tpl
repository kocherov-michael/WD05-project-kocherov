<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-80">
		<?php if (isAdmin()): ?>
		<div class="row">
			<div class="col contacts-links">
				<div class="contacts-links__button"><a class="button button-edit" href="<?=HOST?>contacts-edit">Редактировать</a></div>
				<div class="contacts-links__button"><a class="button" href="<?=HOST?>messages">Сообщения</a></div>
			</div>
		</div>
		<?php endif ?>
		<div class="row">
			<div class="col-md-6 contacts">
				<div class="contacts__title">Контакты </div>

				<?php function showContactsItem($name, $title){
					global  $contacts;
					if ($contacts[$name] != "" ) { ?>
						<div class="row">
							<div class="col-4 contacts__name"><?=$title?></div>
							<div class="col-6 contacts__value contacts__value--link">
							<?php if ( $name == 'email' ){ ?>
								<a href="mailto:<?=$contacts[$name]?>" target="_blank" ><?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'phone' ) { ?>
								<a href="tel:<?=$contacts[$name]?>" target="_blank"><?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'skype' ) { ?>
								<a href="skype:<?=$contacts[$name]?>?chat" target="_blank"><?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'github' ) { ?>
								<a href="<?=$contacts[$name]?>" target="_blank"><?=$contacts[$name]?>
								</a>
							<?php } else { ?>
								<?=$contacts[$name]?>
								</a>
							<?php } ?>
							</div>
						</div>
				<?php	}
				 }?>
				 <?php showContactsItem('name', 'Имя') ?>
				 <?php showContactsItem('secondname', 'Фамилия') ?>
				 <?php showContactsItem('email', 'Email') ?>
				 <?php showContactsItem('skype', 'Skype') ?>
				 <?php showContactsItem('github', 'Github') ?>
				 
				<?php if ($contacts['vk'] != "" || $contacts['fb'] != "" || $contacts['twitter'] != "") { ?>
				<div class="row">
					<div class="col-4 contacts__name">Социальные сети</div>
					<div class="col-6 contacts__value">
						<?php if ($contacts['vk'] != "" ) { ?>
						<div class="contacts__value--bold-link">
							<a href="<?=$contacts['vk']?>">Профиль Вконтакте</a>
						</div>
						<?php } ?>
						<?php if ($contacts['fb'] != "" ) { ?>
						 	<div class="contacts__value--bold-link">
						 		<a href="<?=$contacts['fb']?>">Профиль Facebook</a>
						 	</div>
						<?php } ?>
						<?php if ($contacts['twitter'] != "" ) { ?>
						 	<div class="contacts__value--bold-link">
						 		<a href="<?=$contacts['twitter']?>">Профиль Twitter</a>
						 	</div>
						<?php } ?>
					</div>
				</div>
				<?php } ?>

				<?php showContactsItem('phone', 'Телефон') ?>
				<?php showContactsItem('address', 'Адрес') ?>
			</div>
			<div class="col-md-4">
				<form class="form-contact" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
					<div class="form-contact__title">Связаться со мной</div>

					<?php include( ROOT . "templates/_parts/_errors.tpl")?>
					<?php include( ROOT . "templates/_parts/_success.tpl")?>

					<div class="form-contact__name">
						<input class="input-text" type="text" placeholder="Введите имя" name="name" 
						value="<?=(@trim($_POST['name']) != '') ? $_POST['name'] : '' ?>" />
					</div>
					<div class="form-contact__email mb-10">
						<input class="input-text" type="text" placeholder="Email" name="email"
						value="<?=(@trim($_POST['email']) != '') ? $_POST['email'] : '' ?>" />
					</div>
					<div class="form-contact__message">
						<textarea class="textarea" type="text" placeholder="Сообщение" name="message"><?=(@trim($_POST['message']) != '') ? trim($_POST['message']) : '' ?></textarea>
					</div>
					<div class="form-contact__load-file">
						<div class="load-file-title">Прикрепить файл </div>
						<div class="load-file-opis">jpg, png, pdf, doc весом до 4Мб.</div>
						<div class="load-file-fieldset">
							<input class="inputfile inputfile-rad" id="file" type="file" name="file" data-multiple-caption="{count} файлов выбрано" multiple="" />
							<label for="file">Выбрать файл</label>
							<span>Файл не выбран</span>
						</div>
					</div>
					<div class="form-contact__save">
						<input class="button button-save" type="submit" value="Отправить" name="newMessage" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="map" id="map"></div>
<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA&amp;callback=initMap"></script>