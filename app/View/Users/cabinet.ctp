<section class="personal perc">
    <div class="container">
        <h1>личный кабинет</h1>
        <div class="personal_wrapper">
            <?=$this->element('sidebar') ?>
            <div class="personal_unit">
                <div class="personal_payment">
                    <div class="personal_unit_title">мой профиль</div>
                </div>
                <div class="profile_wrapper">
                    <div class="profile_img">
                        <?php if(!empty($data['User']['img'])): ?>
                            <img   src="/img/users/<?=$data['User']['img']?>">
                        <?php else: ?>
                            <img   src="/img/admin_img/default.svg">
                        <?php endif ?>
                    </div>
                    <div class="profile_blog">
                        <form action="/users/cabinet" method="POST">                        
                            <div class="profile_unit">
                                <div class="table_title">ФИО:</div>
                                <input type="text" value="<?=$data['User']['fio']; ?>" name="data[User][fio]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Почта:</div>
                               <a  href="mailto:smirnov@mail.ru;" class="table_subtitle"><?=$data['User']['username']; ?></a>
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">ИИН:</div>
                                <input type="text" value="<?=$data['User']['iin']; ?>" name="data[User][iin]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Город:</div>
                                <!-- <div class="table_subtitle"><?=$data['User']['city']; ?></div> -->
                                <input type="text" value="<?=$data['User']['city']; ?>" name="data[User][city]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Адрес:</div>
                                <!-- <div class="table_subtitle"><?=$data['User']['address']; ?></div> -->
                                 <input type="text" value="<?=$data['User']['address']; ?>" name="data[User][address]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Телефон:</div>
                                <!-- <div class="table_subtitle"><?=$data['User']['address']; ?></div> -->
                                 <input type="text" value="<?=$data['User']['phone']; ?>" name="data[User][phone]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Пароль:</div>
                                <!-- <div class="table_subtitle"><?=$data['User']['address']; ?></div> -->
                                 <input type="password"  name="data[User][password]">
                            </div>
                            <div class="profile_unit">
                                <div class="table_title">Повторите пароль:</div>
                                <!-- <div class="table_subtitle"><?=$data['User']['address']; ?></div> -->
                                 <input type="password"  name="data[User][password_repeat]">
                            </div>
                            <button class="btn" >Редактировать</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>