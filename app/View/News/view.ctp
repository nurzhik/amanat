<div class="container page">
    <ul class="breadcrumbs">
        <li class="bread_bg">
            <a href="/<?=$lang?>">Главная</a>
        </li>
        <li class="bread_bg">
            <a href="/<?=$lang?>news">Новости</a>
        </li>
        <li class="bg_bread">
            <span><?=$data['News']['title']?></span>
        </li>
    </ul>
</div>
<!-- news inner -->
<section class="news_inner">
    <div class="container">
        <div class="news_inner_wrapper">
            <div class="news_inner_blog">
                <div class="news_inner_img"><img src="/img/news/<?=$data['News']['img']?>" alt=""></div>
                <div class="news_inner_item">
                    <h1><?=$data['News']['title']?></h1>
                    <div class="news_inner_point">
                        <div class="news_data"><?php echo $this->Time->format($data['News']['date'], '%d.%m.%Y', 'invalid'); ?></div>
                        <div class="news_data num"><?=$data['News']['view']?></div>
                    </div>
                </div>
                <div class="news_inner_subtitle"><?=$data['News']['body']?></div>
            </div>
            <div class="news_inner_unit">
                <div class="news_inner_share">
                    <?php foreach ($other_news as $key => $item): ?>
                        <?php if($key <= 3): ?>
                            <div class="news_inner_shrink">
                                <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_inner_shrink_img"><img src="/img/news/<?=$item['News']['img']?>" alt=""></a>
                                <div class="news_inner_shrink_item">
                                    <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_title"><?=$item['News']['title']?></a>
                                    <div class="news_subtitle"><?=$item['News']['short_text']?></div>
                                    <div class="news_data"><?php echo $this->Time->format($item['News']['date'], '%d.%m.%Y', 'invalid'); ?></div>
                                </div>
                            </div>
                        <?php else: ?>
                            <div class="news_inner_bottom">
                                <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_inner_bottom_img"><img src="/img/news/<?=$item['News']['img']?>" alt=""></a>
                                <div class="news_data"><?php echo $this->Time->format($item['News']['date'], '%d.%m.%Y', 'invalid'); ?></div>
                                <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_title"><?=$item['News']['title']?></a>
                            </div>
                        <?php endif ?>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer -->