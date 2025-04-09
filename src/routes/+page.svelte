<script>
  import Form from '$lib/components/Form.svelte';
    import QRCode from 'qrcode';
</script>


<main class="flex flex-col items-center justify-center min-h-screen bg-gray-100">
    <h1 class="text-4xl font-bold mb-4">QR Code Generator</h1>
    <Form />
    <p class="text-gray-600">Enter text to generate a QR code.</p>
    <p class="text-gray-600">Scan the QR code with your phone to see the encoded text.</p>      
    <footer class="mt-8">
        <p class="text-gray-600">Made with ❤️ using Svelte and Tailwind CSS</p>
        <p class="text-gray-600">© 2025 Pannawat</p>
    </footer>
</main>