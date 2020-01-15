<template>
  <span>
    <Heading>Drive safe this winter!</Heading>
    <Txt>
      If you live somewhere where it regularly gets colder than 45° F, you need
      snow tires. They'll make your car safer to drive and help keep other
      drivers safe too.
    </Txt>

    <QA>
      <template v-slot:question>Why do I need snow tires?</template>
      <template v-slot:answer>
        <Txt>
          You need snow tires because your all-season tires perform drastically
          worse in cold weather, putting you at risk of losing traction and getting
          into a collision.
        </Txt>
        <Txt>
          As the rubber in your all-season tires gets colder, it also gets brittle.
          Brittle, inflexible rubber is worse at gripping the road. If you've ever
          slid into a snowy intersection trying to stop at a red light, you've felt
          how brittle rubber provides worse traction.
        </Txt>
        <Txt>
          Snow tires are built with rubber that stays flexible at colder
          temperatures, ensuring you have good grip on the road and keeping you
          safe.
        </Txt>
      </template>
    </QA>

    <QA>
      <template v-slot:question>Do I need snow tires if it doesn't snow near me?</template>
      <template v-slot:answer>
        Yes. Snow tires are also known as
        <em>winter tires</em> because they
        outperform all-season tires in cold weather. This applies to all driving,
        including dry, rainy, and snowy conditions.
      </template>
    </QA>

    <QA>
      <template v-slot:question>How much better are snow tires in the winter?</template>
      <template v-slot:answer>
        Snow tires perform dramatically better than all-season tires in the
        winter. They will help you start from a dead stop, brake in an emergency,
        and help keep your car from sliding in deep snow or on ice.
      </template>
    </QA>

    <QA>
      <template v-slot:question>Do I need snow tires if I have all-wheel drive or 4WD?</template>
      <template v-slot:answer>
        AWD and 4WD will help you get your car moving if some of your wheels are
        spinning in snowy or icy conditions. However, they will not help you
        <em>stop or control</em> your vehicle. Snow tires provide more traction
        for all the driving you do: accelerating, braking, and turning.
      </template>
    </QA>

    <QA>
      <template v-slot:question>When do I need to put on snow tires?</template>
      <template v-slot:answer>
        You need to install your snow tires before your local temperature gets
        below 45° F.
      </template>
    </QA>

    <QA>
      <template v-slot:question>How do I buy snow tires?</template>
      <template v-slot:answer>
        We recommend you buy a set of snow tires that includes the full wheel: the
        metal rim, as well as the rubber tire, mounted and balanced. That way, you
        can have your snow tires swapped at a tire shop without having to pay for
        mounting and balancing every time.
      </template>
    </QA>

    <QA>
      <template v-slot:question>Do I need studded snow tires?</template>
      <template v-slot:answer>
        <em>Studded</em> snow tires have metal studs in them to improve grip in
        certain circumstances
        <em>studless</em> snow tires do not have metal
        studs. Generally, studded tires perform better on ice near 32° F, and
        studlesss tires perform better in most other conditions (
        <a
          href="https://www.outsideonline.com/2359001/studded-tires-winter-car-prep"
        >source</a>).
      </template>
    </QA>
  </span>
</template>

<script lang="js">
import Heading from '../blocks/heading'
import Txt from "../blocks/txt";
import QA from "../blocks/qa";

export default {
  components: { Heading, Txt, QA }
};
</script>

<style lang="stylus" scoped></style>
