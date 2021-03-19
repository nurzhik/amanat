
<section class="page">
    <div class="container">
        <div class="title title_left">Полезные статьи</div>
        <div class="news">
            <?php foreach ($data as $item):?>
                <div class="news_item">
                  <a class="news_img" href="/<?=$lang?>news/view/<?=$item['News']['id']?>">
                    <img src="/img/news/<?=$item['News']['img']?>" alt="">
                  </a>
                  <div class="news_text">
                    <div class="news_type"><?php echo $this->Common->get_category($item['News']['category_id']);?> </div>
                    <a class="news_name" href="/<?=$lang?>news/view/<?=$item['News']['id']?>">    <?php echo $item['News']['title']; ?>
                    </a>
                    <div class="text_item">
                        <?php echo $item['News']['short_text']; ?>
                    </div>
                    <!--  <div class="news_date"><?php echo $this->Time->format($item['News']['date'], '%d.%m.%Y', 'invalid'); ?>  -->
                    <!-- <?=$this->Common->beauty_date($item['News']['date']);?> -->
                    
                    <a class="news_more" href="/<?=$lang?>news/view/<?=$item['News']['id']?>"><?=__('Подробнее')?></a>
                  </div>
                </div>
            <?php endforeach ?>
           
        </div>
    </div>
</section>

<section class="gray">
    <div class="container">
        <div class="title">Поделиться в социальных сетях</div>
        <div class="page_share">
            <div class="share_list">
                <a class="share_link telegram_share" href="javascript:;" rel="nofollow noopener" target="_blank" title="Telegram">
                    <div class="share_img">
                        <img src="img/telegram.svg" alt="">
                    </div>
                    <div class="share_text">Telegram</div>
                </a>
                <a class="share_link wp_share" href="javascript:;" rel="nofollow noopener" target="_blank" title="WhatsApp">
                    <div class="share_img">
                        <img src="img/whatsapp.svg" alt="">
                    </div>
                    <div class="share_text">WhatsApp</div>
                </a>
                <a class="share_link vk_share" href="javascript:;" rel="nofollow noopener" target="_blank" title="ВКонтакте">
                    <div class="share_img">
                        <img src="img/vk.svg" alt="">
                    </div>
                    <div class="share_text">VKontakte</div>
                </a>
                <a class="share_link facebook_share" href="javascript:;" rel="nofollow noopener" target="_blank" title="Facebook">
                    <div class="share_img">
                        <img src="img/facebook_white.svg" alt="">
                    </div>
                    <div class="share_text">Facebook</div>
                </a>
            </div>
            <script src="https://yastatic.net/share2/share.js"></script>
            <div class="ya-share2" data-curtain data-services="vkontakte,facebook,telegram,whatsapp"></div>
        </div>
    </div>
</section>