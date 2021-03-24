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
                         <?php $i=0; ?>
                           
                            <?php foreach ($cars as $item): ?>

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
                                    <?php if(!empty($turns[$item['Car']['id']]['prev'])): ?>
                                        <?php foreach ($turns[$item['Car']['id']]['prev'] as $prev): ?>
                                            <tr>
                                                <td><span><?=$prev['cars']['order_num'] ?> </span></td>
                                                <td><span><?=$prev['cars']['date'] ?></span></td>
                                                <td><span><?=$prev['cars']['title'] ?></span></td>
                                                <td><span>-</span></td>
                                            </tr>
                                        <?php endforeach ?>
                                    <?php endif ?>
                                    <?php foreach ($turns[$item['Car']['id']]['middle'] as $middle): ?>
                                    
                                        <tr class="active"> 
                                            <td><span><?=$middle['Car']['order_num'] ?> </span></td>
                                            <td><span><?=$middle['Car']['date'] ?></span></td>
                                            <td><span><?=$middle['Car']['title'] ?></span></td>
                                            <td><span><?=$middle['User']['fio'] ?></span></td>
                                        </tr>
                                    <?php endforeach ?>
                                    <?php if(!empty($turns[$item['Car']['id']]['next'])): ?>
                                        <?php foreach ($turns[$item['Car']['id']]['next'] as $next): ?>
                                            <tr>
                                                <td><span><?=$next['cars']['order_num'] ?> </span></td>
                                                <td><span><?=$next['cars']['date'] ?></span></td>
                                                <td><span><?=$next['cars']['title'] ?></span></td>
                                                <td><span>-</span></td>
                                            </tr>
                                        <?php endforeach ?>
                                    <?php endif ?>
                                    <tr>
                                <th colspan="4"><span><span>Примечание:</span>Ваша очередь отмечена серым цветом </span></th>
                            </tr>
                        </tbody>
                    </table>
                            <?php endforeach ?>
                            
                           <!--  <?php foreach ($turns as $key => $item ): ?>

                                <?php foreach ($item['prev'] as $car): ?>
                                    <?php $i++; ?>
                                    <tr>
                                        <td><span><?=$i?> </span></td>
                                        <td><span><?=$car['cars']['date'] ?></span></td>
                                        <td><span><?=$car['cars']['title'] ?></span></td>
                                        <td><span>-</span></td>
                                    </tr>

                                <?php endforeach ?>
                                
                            <?php endforeach ?> -->
                           
                            
                </div>
            </div>
        </div>
    </div>
</section>