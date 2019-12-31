<template>
  <b-container>
    <b-row>
      <b-col>
        <p>nav</p>
        <ul>
          <li><router-link to="/foo">Foo</router-link></li>
          <li><router-link to="/bar">Bar</router-link></li>
        </ul>
      </b-col>
    </b-row>
    <router-view />
  </b-container>
</template>

<script lang="ts"></script>

<style scoped lang="stylus">
p
  color: red
</style>
