<div class="page">
<section class="news">
    <div class="container">
        <h1>новости компании</h1>
        <div class="news_wrapper">
            <?php foreach ($data as $item): ?>
                <div class="news_blog">
                    <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_blog_img"><img src="/img/news/<?=$item['News']['img']?>" alt=""></a>
                    <div class="news_item">
                        <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_title"><?=$item['News']['title']?></a>
                        <div class="news_subtitle"><?=$item['News']['short_text']?></div>
                        <div class="news_bottom">
                            <a href="/<?=$lang?>news/view/<?=$item['News']['alias']?>" class="news_btn">Подробнее</a>
                            <div class="news_data"><?php echo $this->Time->format($item['News']['date'], '%d.%m.%Y', 'invalid'); ?></div>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
       <?php if($data): ?>
            <div class="pagination">
                <?php if($paginator['start']): ?>
                    <a href="<?=$paginator['link']?>1" class="p_start pag_btn "> << </a>
                <?php endif ?>

                <?php if($paginator['prev']): ?>
                    <a href="<?=$paginator['link']?><?=$paginator['prev']?>" class="p_prev pag_btn"> < </a>
                <?php endif ?>
                <span class="p_pages"><?=__('Страница')?> <?=$paginator['current_page']?> <?=__('из')?> <?=$paginator['count_pages']?></span>
                <?php if($paginator['next']): ?>
                    <a href="<?=$paginator['link']?><?=$paginator['next']?>" class="p_next pag_btn"> > </a>
                <?php endif ?>

                <?php if($paginator['end']): ?>
                    <a href="<?=$paginator['link']?><?=$paginator['count_pages']?>" class="p_end pag_btn "> >> </a>
                <?php endif ?>
            </div>
        <?php endif ?>
       <!--  <div class="pagination">
            <a class="pag pag_prev" href="javascript:;"></a>
            <a class="pag active" href="javascript:;">1</a>
            <a class="pag now" href="javascript:;">2</a>
            <a class="pag now" href="javascript:;">3</a>
            <a class="pag now" href="javascript:;">4</a>
            <a class="pag pag_next" href="javascript:;"></a>
          </div> -->
    </div>
</section>
 <?=$this->element('partners') ?>
</div>    