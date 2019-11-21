<template>
  <div>
    <nav-top></nav-top>
    <slot/>
    <footer-monero></footer-monero>
  </div>
</template>

<script>
import NavTop from './_nav_top';
import FooterMonero from './_footer-monero';

  export default {
    components: {
      'nav-top': NavTop,
      'footer-monero': FooterMonero
    }
  }
</script>
