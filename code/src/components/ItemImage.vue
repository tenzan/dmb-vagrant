<template>
  <div>
    <img :src="image_url" />
  </div>
</template>

<script>
export default {
  props: ["image_url"]
};
</script>
