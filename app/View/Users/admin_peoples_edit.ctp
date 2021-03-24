
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
          <strong>ФИО</strong>
          <div class="text-muted">
            <?=$data['User']['fio']?>
          </div>
        <hr>
          <strong>ИИН</strong>
          <div class="text-muted">
            <?=$data['User']['iin']?>
          </div>
        <hr>
          <strong>Город</strong>
          <div class="text-muted">
            <?=$data['User']['city']?>
          </div>
        <hr>
          <strong>Адрес</strong>
          <div class="text-muted">
            <?=$data['User']['address']?>
          </div>
        <hr>
         
          <strong>Телефон</strong>
          <div class="text-muted">
            <?=$data['User']['phone']?>
          </div>
        
        <?php if($data['User']['active']=='deactivate'):?>
          <form action="/admin/peoples/edit/<?=$data['User']['id']?>" method="POST">
            <input type="hidden" value="activate" name="data[active]">
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