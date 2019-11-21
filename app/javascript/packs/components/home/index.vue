<template>
  <layout>
    <div class="container py-5 my-5">
  
      <div class="row text-center py-2 my-2">
        <div class="col-md-6 text-center py-3 offset-md-3">
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><font-awesome-icon icon="calendar" /></span>
            </div>
            <input type="date" class="form-control" id="start" name="trip-start" value="2019-11-21" min="2019-01-01" max="2020-03-31">
          </div>
        </div>
        
        <div class="col-md-5 col-s-12">
          <div class="card">
            <div class="card-body">

              <span class=" px-2 mx-2 float-left"><small class="text-muted">From</small></span>
              <div class="col-12">
                <select class="custom-select">
                  <option selected>Select currency</option>
                  <option value="1">EUR</option>
                  <option value="2">USD</option>
                  <option value="3">GBP</option>
                  <option value="4">AUD</option>
                  <option value="5">CAD</option>
                  <option value="6">COP</option>
                  <option value="7">TTD</option>
                  <option value="8">INR</option>
                  <option value="9">SGD</option>
                  <option value="10">BRL</option>
                </select>
              </div>
              <div class="col-12 pt-3">
               <div class="form-group">
                   <input type="" class="form-control" placeholder="Amount">
               </div>
              </div>

            </div>
          </div>
        </div>

        <div class="col-md-2 col-s-12">
          <font-awesome-icon icon="exchange-alt" /><br />
          <button type="button" class="btn btn-success" @click="handleConvert">Convert</button>
        </div>
        <div class="col-md-5 col-s-12">
          <div class="card">
            <div class="card-body">
              
              <span class=" px-2 mx-2 float-left"><small class="text-muted">To</small></span>
              <div class="col-12">
                <select class="custom-select">
                  <option selected>Select currency</option>
                  <option value="1">EUR</option>
                  <option value="2">USD</option>
                  <option value="3">GBP</option>
                  <option value="4">AUD</option>
                  <option value="5">CAD</option>
                  <option value="6">COP</option>
                  <option value="7">TTD</option>
                  <option value="8">INR</option>
                  <option value="9">SGD</option>
                  <option value="10">BRL</option>
                </select>
              </div>
              <div class="col-12 pt-3">
               <div class="form-group">
                  <input type="" class="form-control" placeholder="Amount">
               </div>
              </div>

            </div>
          </div>
        </div>

      </div>
    </div>
  </layout>
</template>

<script>
  import Layout from '../shared/layout';

  export default {
    components: {
      'layout': Layout
    },
    methods: {
      handleConvert() {
        $.ajax({
          type: 'post',
          url: 'convert',
          contentType: 'application/json; charset=utf-8',
          data: JSON.stringify({
            "from": "EUR",
            "to": "USD",
            "amount": 120
          }),
                  
          success: function(data){
            alert(data.result)
          },
          
          error: function(xhr, status, error){
            console.log("Convert error")
          }
        });            
      }
    },
    data: function() {
    },
    mounted: function() {
    }
  }
</script>

<style>

</style>
