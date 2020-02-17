<template>
  <div>
    <!-- Two columns -->
    <div class="flex mb-4">
      <div class="w-1/2 bg-gray-400">
        <ItemsList @imageChanged="imageChanged" />
      </div>
      <div class="w-1/2 bg-gray-500">
        <ItemImage :image_url="image"></ItemImage>
      </div>
    </div>
  </div>
</template>

<script>
import ItemsList from "./ItemsList";
import ItemImage from "./ItemImage";

export default {
  components: {
    ItemsList,
    ItemImage
  },
  data() {
    return {
      image: ""
    };
  },
  methods: {
    imageChanged(image) {
      this.image = image;
    }
  }
};
</script>
