<section class="personal perc">
    <div class="container">
        <h1>личный кабинет</h1>
        <div class="personal_wrapper">
            <?=$this->element('sidebar') ?>
            <div class="personal_unit">
                <div class="personal_payment">
                    <div class="personal_unit_title">МОЯ НЕДВИЖИМОСТЬ</div>
                </div>
                <?php foreach ($homes as $item): ?>
                    <div class="table">
                        <div class="table_head">
                            <div class="car"><?=$item['Home']['title'] ?></div>
                            <div class="table_text">Cостояние: <span><?=$item['Home']['status'] ?></span></div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Дата заключения договора:</div>
                            <div class="table_subtitle"><?php echo $this->Time->format($item['Home']['date'], '%d.%m.%Y', 'invalid'); ?></div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Вступительный взнос:</div>
                            <div class="table_subtitle"><?=$item['Home']['entrance'] ?> тг</div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Первоначальный взнос:</div>
                            <div class="table_subtitle"><?=$item['Home']['initial'] ?> тг</div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Остаток по первоначальному взносу:</div>
                            <div class="table_subtitle"><?=$item['Home']['remainder'] ?> тг</div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Застрощик:</div>
                            <div class="table_subtitle"><?=$item['Home']['developer'] ?></div>
                        </div>
                        <div class="table_body">
                            <div class="table_title">Стоймость:</div>
                            <div class="table_subtitle"><?=$item['Home']['price'] ?></div>
                        </div>
                        <a href="javascript:;" class="main_btn">подать заявку на смену авто</a>
                    </div>
                <?php endforeach ?>
                    
            </div>
        </div>
    </div>
</section>