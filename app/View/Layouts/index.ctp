<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8">
        <title>Amanat Drive</title>
        <meta name="description" content=""/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="img/favicon.png" />
        <link rel="stylesheet" href="/css/general.css">
        <link rel="stylesheet" href="/css/jquery.fancybox.css">
        <link rel="stylesheet" href="/css/slick.css">
        <link rel="stylesheet" href="/css/ion.rangeSlider.min.css">
        <link rel="stylesheet" href="/css/style.css?v=1.33">
    </head>
    <body class="<?=$l?>">
    <div class="popup" id="alert_popup">
        <div class="alert <?=(isset($_SESSION['Message'])) ? 'alert--active' : '';?>">
            <div class="container">
                <?php //var_dump($_SESSION); ?>
                <?php echo $this->Session->flash('good'); ?>
                <?php echo $this->Session->flash('bad'); ?>
                <?php if(isset($_SESSION['Message'])){unset($_SESSION['Message']);} ?>
                <div class="my-alert__close"></div>
            </div>
        </div> 
    </div>
    <header> 
        <div class="container">
            <a href="javascript:;" class="header_logo"><img src="/img/logo.svg" alt=""></a>
            <div class="header_right">
                <div class="header_top">
                  <div class="header_quest">
                    <form class="search" action="">
                        <input type="search" class="search_input" placeholder="Поиск по сайту..." name="" value="">
                        <button class="search_btn" type="submit"></button>                    
                    </form>
                    <div class="lang_block">
                        <a href="javascript:;" class="lang_choice"><span>ru</span></a>
                        <div class="other_lang" style="display: none;">
                            <a href="javascript:;" class="lang ">kz</a>
                            <a href="javascript:;" class="lang active">ru</a>
                            <a href="javascript:;" class="lang ">en</a>
                        </div>
                    </div>
                  </div>
                  <a href="tel:87078553707" class="header_tel">+7 (707) 855 37 07</a>
                  <div class="header_icons">
                    <a class="header_icon " target="_blank" href="javascript:;"><img src="/img/face.svg" alt=""></a>
                    <a class="header_icon" target="_blank" href="javascript:;"><img src="/img/youtube.svg" alt=""></a>
                    <a class="header_icon" target="_blank" href="javascript:;"><img src="/img/insta.svg" alt=""></a>                        
                  </div>
                  <div class="header_burger">
                    <div class="mob_menu">
                        <span class="menu_btn">
                           <span class="menu_btn_span menu1"></span>
                           <span class="menu_btn_span menu2"></span>
                           <span class="menu_btn_span menu3"></span>
                        </span>
                     </div>
                     <div class="under_nav" style="display: none;"></div>
                   </div>
                </div>
                <div class="header_bottom">
                    <ul class="header_ul">
                        <li><a href="">Главная</a></li>
                        <li>
                            <a href="javascript:;">Наши программы<div class="menu_arrow"></div></a>
                            <div class="sub_menu">
                                <div class="sub_menu_list">
                                    <a href="apartment.html" class="sub_link">Квартира</a>
                                    <a href="auto.html" class="sub_link">Машина</a>
                                </div>
                            </div>
                        </li>
                        <li><a href="/<?=$lang?>faqs">Вопросы и ответы</a></li>
                        <li><a href="/<?=$lang?>news">Новости</a></li>
                        <li><a href="/<?=$lang?>albums">Галерея</a></li>
                        <li><a href="/<?=$lang?>contacts">Контакты</a></li>
                    </ul>
                    <a href="javascript:;" id="btn" data-src="#vhod" data-fancybox="" class="header_private">Личный кабинет</a>
                </div>
            </div>
        </div>
    </header> 

   

    <?php echo $this->fetch('content'); ?>

    <footer>
        <div class="container">
            <div class="foo_wrapper">
                <div class="foo_top">
                    <a href="javascript:;" class="foo_img"><img src="/img/logo_footer.svg" alt=""></a>
                    <ul class="footer_ul">
                        <li><a href="javascript:;">Главная</a></li>
                        <li><a href="javascript:;">О проекте</a></li>
                        <li><a href="javascript:;">Вопросы и ответы</a></li>
                        <li><a href="javascript:;">Новости</a></li>
                        <li><a href="javascript:;">Галерея</a></li>
                        <li><a href="javascript:;">Контакты</a></li>
                    </ul>
                    <div class="foo_icons">
                        <a href="javascript:;" class="foo_icon"><img src="/img/foo_face.svg" alt=""></a>
                        <a href="javascript:;" class="foo_icon"><img src="/img/foo_youtube.svg" alt=""></a>
                        <a href="javascript:;" class="foo_icon"><img src="/img/foo_insta.svg" alt=""></a>
                    </div>
                </div>
                <div class="foo_bottom">
                    <p>Amanat Drive 2020 © Все права защищены</p>
                    <p>Разработка сайта <a target="_blank"  href="https://astanacreative.kz/">AstanaCreative</a></p>
                </div>
            </div>
        </div>
    </footer>
    <div id="vhod" style="display: none;">
        <div class="popup-form">
            <span class="popup-form__heading">Войти</span>
            <form action="/users/login" method="POST" class="form white-bg">
                <div class="popup-row">
                    <div class="popup-title">Введите логин или эл. почту</div>
                    <input type="text" name="data[User][username]"  required>
                </div>
                <div class="popup-row">
                    <div class="popup-title">Введите ваш пароль:</div>
                    <input type="password" name="data[User][password]" required>
                </div>
                <button href="personal.html" class="popup-sbt" type="submit">Войти</button>
                <a href="javascript:;" class="reestablish">Восстановить пароль</a>
                <a href="javascript:;"  class="reestablish mt">Зарегистрироваться</a>
            </form>
        </div>
    </div>
    <div class="fancybox-content" style="display: none;" id="zayavka">
        <div class="popup-form">
            <span class="popup-form__heading">Подать заявку</span>
            <form action="/requests/send" method="POST" class="form white-bg">
                <div class="popup-row">
                    <div class="popup-title">Имя</div>
                    <input type="text" required>
                </div>
                <div class="popup-row">
                    <div class="popup-title">Телефон:</div>
                    <input type="password" required>
                </div>
                <div class="popup-row">
                    <div class="popup-title">Программа:</div>
                    <select>
                        <option>Автомобильная программа</option>
                        <option>Жилищная программа</option>
                    </select>
                </div>
                <button class="popup-sbt" type="submit">Отправить</button>
            </form>
        </div>
    </div>
    <div class="fancybox-content" style="display: none;" id="calc">
        <div class="popup-form">
            <span class="popup-form__heading">Онлайн калькулятор</span>
            <form action="/requests/send" method="POST" class="form white-bg">
                <div class="popup-row">
                    <div class="popup-title">Имя</div>
                    <input type="text" required>
                </div>
                <div class="popup-row">
                    <div class="popup-title">Телефон:</div>
                    <input type="password" required>
                </div>
                <div class="popup-row">
                    <div class="popup-title">Программа:</div>
                    <select>
                        <option>Автомобильная программа</option>
                        <option>Жилищная программа</option>
                    </select>
                </div>
                <button class="popup-sbt" type="submit">Отправить</button>
            </form>
        </div>
    </div>
    <script src="/js/jquery-3.0.0.min.js"></script>
    <script src="/js/jquery.fancybox.min.js"></script>
    <script src="/js/slick.min.js"></script>
    <script src="/js/ion.rangeSlider.min.js"></script>
    <script src="/js/jquery.maskedinput.min.js"></script>
    <script src="/js/waypoint.js"></script>
    <script src="/js/script.js?v=1.25"></script>
    </body>
</html>