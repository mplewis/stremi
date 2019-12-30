<template>
  <b-container>
    <b-row>
      <b-col>
        <h1>{{ kind }}</h1>
      </b-col>
      <b-col cols="2">
        <p>{{ text }}</p>
      </b-col>
    </b-row>
  </b-container>
</template>

<script lang="ts">
type Salutation = "HELLO" | "GOODBYE";
interface Message {
  kind: Salutation;
  text: string;
}

const msg = {
  kind: "HELLO",
  text: "Hello from typed Vue!"
};

export default {
  data: () => msg
};
</script>

<style scoped lang="stylus">
p {
  color: blue;
}
</style>
