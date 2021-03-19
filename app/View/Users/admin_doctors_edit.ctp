
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Список Докторов</h1>
      </div>
      <div class="col-sm-6">
        
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">

  <!-- Default box -->
  <div class="card">
    <div class="card-header">
      <h3 class="card-title">Список Докторов</h3>
      <!-- <div class="card-tools">
        <a href="/admin/news/add?lang=ru" class="btn  btn-success">Добавить новый материал</a>
      </div> -->
		
    </div>
    <div class="card-body">
      <?php if(!empty($data)): ?>
      <div class="box-body">
          <strong>Почта</strong>
          <div class="text-muted">
            <?=$data['User']['username']?>
          </div>
        <hr>
          <strong>Фамилия</strong>
          <div class="text-muted">
            <?=$data['User']['surname']?>
          </div>
        <hr>
          <strong>Имя</strong>
          <div class="text-muted">
            <?=$data['User']['name']?>
          </div>
        <hr>
          <strong>Дата рождение</strong>
          <div class="text-muted">
            <?=$data['User']['date_of_birth']?>
          </div>
        <hr>
          <strong>Пол</strong>
          <div class="text-muted">
            <?=$data['User']['gender']?>
          </div>
        <hr>
          <strong>Телефон</strong>
          <div class="text-muted">
            <?=$data['User']['phone']?>
          </div>
        <hr>
          <strong>Специальность</strong>
          <div class="text-muted">
            <ul>
              <?php foreach ($specialists as $item): ?>
                  <li>
                    <?=$item['Specialist']['title_ru']?>
                  </li>
              <?php endforeach ?>
            </ul>
          </div>
        <hr>
          <strong>Образование</strong>
          <div class="text-muted">
            <?php echo $this->Common->get_anketa($user_id,'Образование');?>
          </div>
        <hr>
          <strong>Опыт работы</strong>
          <div class="text-muted">
            <?php echo $this->Common->get_anketa($user_id,'Опыт_работы');?>
          </div>
        <hr>
        <strong>Номер счета</strong>
          <div class="text-muted">
            <?php echo $this->Common->get_anketa($user_id,'Номер_счета');?>
          </div>
        <hr>
          <strong>Дополнительно</strong>
          <div class="text-muted">
            <?php echo $this->Common->get_anketa($user_id,'Дополнительно');?>
          </div>
        <hr>
          <strong>Документ</strong>
          <div class="text-muted">
            <a href="/files/users/<?=$data['User']['doc']?>">Файл</a>
          </div>
        <hr>
        <?php if($data['User']['activition']==0):?>
          <form action="/admin/doctors/edit/<?=$data['User']['id']?>" method="POST">
            <input type="hidden" value="1" name="data[activition]">
            <button class="btn btn-success ">Активировать</button>
          </form>
        <?php endif ?>
      </div>
      <?php else: ?>
        <p class="empty-text">К сожалению в данном разделе еще не добавлена информация...</p>
      <?php endif ?>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->

</section>