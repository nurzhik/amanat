<section class="personal perc">
    <div class="container">
        <h1>личный кабинет</h1>
        <div class="personal_wrapper">
             <?=$this->element('sidebar') ?>
            <div class="personal_unit">
                <div class="personal_payment">
                    <div class="personal_unit_title">Моя очередь</div>
                </div>
                
                    <div class="table_auto">
                    <table>
                        <thead>
                            <tr>
                                <th><span>Очередь</span></th>
                                <th><span>Дата заключения договора</span></th>
                                <th><span>Машина</span></th>
                                <th><span>ФИО</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i=0; ?>
                            <?php foreach ($turns as $key => $item ): ?>
                                <?php foreach ($item['prev'] as $car): ?>
                                    <?php $i++; ?>
                                    <tr>
                                        <td><span><?=$i ?> </span></td>
                                        <td><span><?=$car['cars']['date'] ?></span></td>
                                        <td><span><?=$car['cars']['title'] ?></span></td>
                                        <td><span>-</span></td>
                                    </tr>

                                <?php endforeach ?>
                                
                            <?php endforeach ?>
                           
                            <tr>
                                <th colspan="4"><span><span>Примечание:</span>Ваша очередь отмечена серым цветом </span></th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>