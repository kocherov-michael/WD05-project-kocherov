<div class="container user-content pb-120">
	<div class="row mb-35">
		<div class="col-md-9 offset-md-3">
			<div class="work-experience">
				<div class="work-experience-block">
					<div class="work-experience-block__title">
						Опыт работы
					</div>
					<?php if ( isAdmin() ) { ?>
					<div class="work-experience-block__button">
						<a class="button button-edit" href="<?=HOST?>edit-jobs">Редактировать</a>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>

	<?php foreach ($jobs as $job){ ?>
		<?php include ROOT . "templates/about/_card-job.tpl" ?>
	<?php } ?>

</div>