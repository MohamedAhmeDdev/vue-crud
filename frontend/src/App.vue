<template>
  <div>
    <NavBar/>
    <Footer />
  </div>
</template>

<script>
import Footer from "./components/Footer.vue";
import NavBar from "./components/NavBar.vue";

export default {
  components: {  NavBar },
  component: { Footer},
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

</style>
