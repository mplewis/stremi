<template>
  <b-row>
    <b-col class="ml-auto mr-auto">
      <details>
        <summary>
          <slot name="question" />
        </summary>
        <slot name="answer" />
      </details>
    </b-col>
  </b-row>
</template>

<style lang="stylus" scoped>
details {
  padding-top: 3px;
  padding-bottom: 3px;
}

summary {
  font-weight: 600;
}
</style>
