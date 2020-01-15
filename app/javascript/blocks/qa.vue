<template>
  <b-row>
    <b-col class="ml-auto mr-auto content">
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
.content {
  max-width: 600px;
}

details {
  padding-top: 3px;
  padding-bottom: 3px;
}

summary {
  font-weight: 600;
}
</style>
