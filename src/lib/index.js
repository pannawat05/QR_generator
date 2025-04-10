import Pages from './routes/+pages.svelte';

if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('/service-worker.js');
  });
}

const app = new Pages({
  target: document.body,
  props: {
    name: 'qrgen'
  }
});

export default Pages;