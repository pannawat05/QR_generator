<script>
    import { onMount } from 'svelte';
    import QRCode from 'qrcode';
  
    let text = '';
    let qrCode = '';
  
    function generateQRCode() {
      if (text) {
        QRCode.toDataURL(text)
          .then(url => {
            qrCode = url;
          })
          .catch(err => {
            console.error(err);
          });
      }
    }
  </script>
  
  <div class="w-full max-w-xs mx-auto">
    <input
      type="text"
      bind:value={text}
      placeholder="Enter text to encode"
      class="w-full border border-gray-300 rounded-md p-2 mb-4 focus:border-blue-500 focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500"
    />
    <button
      on:click={generateQRCode}
      class="w-full bg-blue-500 text-white font-bold py-2 px-4 rounded hover:bg-blue-600 disabled:bg-gray-300 disabled:cursor-not-allowed"
      disabled={!text}
    >
      Generate QR Code
    </button>
  
    {#if qrCode}
      <img src={qrCode} class="mt-4 mx-auto" alt="QR Code" />
    {/if}
  </div>
  