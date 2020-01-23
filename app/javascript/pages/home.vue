<template>
  <main>
    <Heading>Drive safe this winter!</Heading>
    <Txt>
      If you live somewhere where it regularly gets colder than 45° F, you need
      snow tires. They'll make your car safer to drive and help keep other
      drivers safe too.
    </Txt>

    <form>
      <txt>Enter your zip code and we'll email you when it's time to put on snow tires:</txt>
      <b-row class="my-2">
        <b-col>
          <b-form-input v-model="zip" placeholder="90210" :state="validZip" />
          <b-form-invalid-feedback>Please enter a valid 5-digit US zip code</b-form-invalid-feedback>
        </b-col>
      </b-row>
      <b-row class="my-2">
        <b-col>
          <b-form-input v-model="email" type="email" placeholder="me@example.com" />
        </b-col>
      </b-row>
      <b-row class="my-3">
        <b-col>
          <b-button type="submit" variant="primary">Sign up for reminders</b-button>
        </b-col>
      </b-row>
    </form>

    <Txt>
      Not sure what snow tires are, or if you need them?
      <router-link to="faq">Learn more here.</router-link>
    </Txt>
  </main>
</template>

<script lang="ts">
// @ts-ignore
import Heading from "../blocks/heading";
// @ts-ignore
import Txt from "../blocks/txt";

function validateZip(zip: string) {
  return Boolean(zip.match(/^\d\d\d\d\d$/));
}

export default {
  components: { Heading, Txt },
  data() {
    return { email: "", zip: "" };
  },
  computed: {
    validZip() {
      if (this.zip.length < 5) return null;
      if (validateZip(this.zip)) return null;
      return false;
    }
  }
};
</script>

<style lang="stylus" scoped>
main {
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

form {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 30px;
}
</style>
