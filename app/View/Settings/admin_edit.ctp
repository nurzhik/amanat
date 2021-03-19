<?php 
echo $this->Form->create('Setting', array('type' => 'file'));
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Редактирование</h1>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">Данные</h3>

          <div class="card-tools">
            <a href="/admin/settings" type="button" class="btn btn-tool">
              <i class="fas fa-arrow-left"></i>
            </a>
          </div>
        </div>
        <div class="card-body">
    			<div class="form-group">
    				<label for="inputName">Заголовок страницы Партнеры</label>
    				<input type="text" id="inputName" class="form-control"  required="required" name="data[Setting][partner_title]" value=" <?=(!empty($data['Setting']['partner_title'])) ? $data['Setting']['partner_title'] : '' ?>" >
    			</div>
    			<div class="form-group">
    				<label for="editor2">Текст  страницы Партнеры</label>
    				<textarea id="editor2" class="form-control"  name="data[Setting][partner_text]" ><?=(!empty($data['Setting']['partner_text'])) ? $data['Setting']['partner_text'] : '' ?></textarea>
    			</div>
          <div class="form-group">
            <label for="inputVideo">Ссылка на видео  страницы Партнеры</label>
            <input type="text" id="inputVideo" class="form-control"  required="required" name="data[Setting][partner_video]" value=" <?=(!empty($data['Setting']['partner_video'])) ? $data['Setting']['partner_video'] : '' ?>" >
          </div>
          <hr>
          <div class="form-group">
            <label for="editor3">Текст   О нас</label>
            <textarea id="editor3" class="form-control"  name="data[Setting][about_text]" ><?=(!empty($data['Setting']['about_text'])) ? $data['Setting']['about_text'] : '' ?></textarea>
          </div>
          <div class="form-group">
            <label for="inputVideoAbout">Ссылка на видео  О нас</label>
            <input type="text" id="inputVideoAbout" class="form-control"  required="required" name="data[Setting][about_video]" value=" <?=(!empty($data['Setting']['about_video'])) ? $data['Setting']['about_video'] : '' ?>" >
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
   
  </div>
  <div class="row">
    <div class="col-12">
     <!--  <a href="#" class="btn btn-secondary">Cancel</a> -->
     <?
	echo $this->Form->button('Редактировать', array('class' => 'btn btn-success float-right'));
	?>
     
    </div>
  </div>
</section>
<script type="text/javascript">
  CKEDITOR.replace( 'editor3' );
  CKEDITOR.replace( 'editor2' );
</script>