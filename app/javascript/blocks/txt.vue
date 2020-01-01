<template>
  <b-row>
    <b-col class="ml-auto mr-auto content">
      <p><slot /></p>
    </b-col>
  </b-row>
</template>

<style lang="stylus" scoped>
.content
  max-width 600px
p
  font-size 16px
  margin-bottom 8px
</style>
