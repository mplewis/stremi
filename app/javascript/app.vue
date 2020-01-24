<template>
  <b-container fluid>
    <b-row>
      <b-col>
        <Navbar />
      </b-col>
    </b-row>
    <router-view />
  </b-container>
</template>

<script lang="ts">
// @ts-ignore
import Navbar from "./navbar";

export default {
  components: { Navbar }
};
</script>

<style lang="stylus">
*
  font-family "Helvetica Neue", "Helvetica", "Arial", sans-serif
</style>
