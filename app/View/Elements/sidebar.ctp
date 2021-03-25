

<div class="personal_blog"> 
	<div class="personal_mind">
	    <div class="personal_mind_img">
	    	<?php if(!empty($login['img'])): ?>
                            <img   src="/img/users/$login['img']">
                        <?php else: ?>
                            <img   src="/img/admin_img/default.svg">
                        <?php endif ?>
                    </div>
	    <div class="personal_mind_text"><?=$login['fio']?></div>
	</div>
	<div class="personal_corpse">
	    <a href="/<?=$lang?>users/my_turn" class="personal_item  queue <?= ($this->request->params['action'] == 'my_turn' ) ? 'active' : ''?>">Моя очередь</a>
	     <a href="/<?=$lang?>users/my_turn_appartaments" class="personal_item  queue <?= ($this->request->params['action'] == 'my_turn_appartaments' ) ? 'active' : ''?>">Моя очередь Недвижимость</a>
	    <a href="personal_payments.html" class="personal_item payments">Платежи</a>
	    <a href="/<?=$lang?>users/appartaments" class="personal_item personal_item--property <?= ($this->request->params['action'] == 'appartaments' ) ? 'active' : ''?>">Недвижимость</a>
	    <a href="/<?=$lang?>users/cars" class="personal_item transport <?= ($this->request->params['action'] == 'cars' ) ? 'active' : ''?>">транспорт</a>
	    <a href="/<?=$lang?>users/cabinet" class="personal_item profile  <?= ($this->request->params['action'] == 'cabinet' ) ? 'active' : ''?>" >мой профиль</a>
	    <a href="/<?=$lang?>users/my_questionnaires" class="personal_item questionnaire <?= ($this->request->params['action'] == 'my_questionnaires' ) ? 'active' : ''?>">опросник</a>
	    <a href="/users/logout" class="personal_item out">выйти</a>
	</div>
</div>