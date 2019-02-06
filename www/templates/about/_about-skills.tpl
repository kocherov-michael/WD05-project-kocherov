<?php function showIndicator($title, $value, $color = ''){ 
	$indicatorWidth = 125;
	$radius = ($indicatorWidth - 20) / 2;
	$perimetr = 2 * pi() * $radius;
	$offset = $perimetr * ( 1 - intval($value)/100 );
	?>
<div class="indicator">
	<svg 
		width="<?=$indicatorWidth?>" 
		height="<?=$indicatorWidth?>" 
		class="circle" 
		viewbox="0 0 <?=$indicatorWidth?> <?=$indicatorWidth?>"
		>
		<circle class="circle__bg" cx="<?=$indicatorWidth/2?>" cy="<?=$indicatorWidth/2?>" r="<?=$radius?>"> </circle>
		<circle 
				<?php if ($color == '') { ?>
					class="circle__indicator"
				<?php } else { ?>
					class="circle__indicator circle__indicator--<?=$color?>"
				<?php } ?> 
				stroke-dasharray="<?=$perimetr?>"
				stroke-dashoffset="<?=$offset?>"
				cx="<?=$indicatorWidth/2?>" cy="<?=$indicatorWidth/2?>" r="<?=$radius?>"
			></circle>
	</svg>
	<div class="indicator__value"><?=$title?></div>
</div>
<?php } ?>
<div class="bg-technology">
	<div class="container user-content">
		<div class="technology">
			<div class="row">
				<div class="col-md-9 offset-md-3">
					<div class="technology-block">
						<div class="technology-block__title">
							Технологии<span>Которые использую в работе</span>
						</div>
						<?php if ( isAdmin() ) { ?>
						<div class="technology-block__button">
							<a class="button button-edit" href="<?=HOST?>edit-skills">Редактировать</a>
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="row mb-40">
				<div class="col-md-3 technology__title d-flex align-items-center justify-content-center">Frontend</div>
				<div class="col-md-9">
					<?php showIndicator('HTML5', $skills['html'], 'green'); ?>
					<?php showIndicator('CSS3', $skills['css'], 'green'); ?>
					<?php showIndicator('JS', $skills['js'], 'green'); ?>
					<?php showIndicator('jQuery', $skills['jquery'], 'green'); ?>
				</div>
			</div>
			<div class="row mb-40">
				<div class="col-md-3 technology__title d-flex align-items-center justify-content-center">Backend</div>
				<div class="col-md-9">
					<?php showIndicator('PHP', $skills['php'], 'blue'); ?>
					<?php showIndicator('MySql', $skills['mysql'], 'blue'); ?>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 technology__title d-flex align-items-center justify-content-center">Workflow</div>
				<div class="col-md-9">
					<?php showIndicator('Git', $skills['git'], 'yellow'); ?>
					<?php showIndicator('Gulp', $skills['gulp'], 'yellow'); ?>
					<?php showIndicator('NPM', $skills['npm'], 'yellow'); ?>
					<?php showIndicator('Yarn', $skills['yarn'], 'yellow'); ?>
				</div>
			</div>
		</div>
	</div>
</div>