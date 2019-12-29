<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
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
  data: function() {
    return {
      message: `${msg.kind}: ${msg.text}`
    };
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
