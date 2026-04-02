import adapter from '@sveltejs/adapter-vercel';

const config = {
  kit: {
    adapter: adapter({
      // options par défaut suffisent
      edge: false
    })
  }
};

export default config;