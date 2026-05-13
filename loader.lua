<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mie Ayam & Mie Pangsit Mantap – Enak, Murah, Kenyang!</title>
<meta name="description" content="Mie Ayam & Mie Pangsit Mantap – porsi mantap, rasa nikmat. Pesan sekarang via WhatsApp!">
<meta name="keywords" content="mie ayam, mie pangsit, kuliner, pesan online, murah, enak">
<meta property="og:title" content="Mie Ayam & Mie Pangsit Mantap">
<meta property="og:description" content="Porsi mantap, rasa nikmat, harga merakyat!">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
  :root {
    --yellow: #F5A623;
    --yellow-light: #FFF3DC;
    --yellow-dark: #D4891A;
    --red: #D93025;
    --red-light: #FFF0EF;
    --brown: #6B3A2A;
    --brown-light: #F5EDE8;
    --white: #FAFAF8;
    --bg: #FFFEF9;
    --text: #1A1A1A;
    --text-muted: #6B6B6B;
    --shadow-sm: 0 2px 8px rgba(0,0,0,0.08);
    --shadow-md: 0 4px 20px rgba(0,0,0,0.12);
    --shadow-lg: 0 8px 40px rgba(0,0,0,0.16);
    --radius: 16px;
    --radius-sm: 10px;
    --transition: 0.3s cubic-bezier(0.4,0,0.2,1);
  }
  [data-theme="dark"] {
    --yellow: #F5A623;
    --yellow-light: #2A2310;
    --yellow-dark: #FFB83F;
    --red: #FF4D3F;
    --red-light: #2A1210;
    --brown: #D4A090;
    --brown-light: #2A1E1A;
    --white: #1E1E1E;
    --bg: #141414;
    --text: #F0F0F0;
    --text-muted: #A0A0A0;
    --shadow-sm: 0 2px 8px rgba(0,0,0,0.3);
    --shadow-md: 0 4px 20px rgba(0,0,0,0.4);
    --shadow-lg: 0 8px 40px rgba(0,0,0,0.5);
  }
  * { margin: 0; padding: 0; box-sizing: border-box; }
  html { scroll-behavior: smooth; }
  body {
    font-family: 'Poppins', sans-serif;
    background: var(--bg);
    color: var(--text);
    transition: background var(--transition), color var(--transition);
    overflow-x: hidden;
  }

  /* ========== LOADING ========== */
  #loading {
    position: fixed; inset: 0; z-index: 9999;
    background: var(--yellow);
    display: flex; flex-direction: column;
    align-items: center; justify-content: center;
    gap: 16px;
    transition: opacity 0.5s, visibility 0.5s;
  }
  #loading.hide { opacity: 0; visibility: hidden; }
  .loading-bowl { font-size: 64px; animation: spin 1s linear infinite; }
  .loading-text { font-size: 18px; font-weight: 700; color: var(--brown); }
  .loading-bar { width: 200px; height: 4px; background: rgba(0,0,0,0.15); border-radius: 99px; overflow: hidden; }
  .loading-fill { height: 100%; background: var(--brown); border-radius: 99px; animation: fill 1.5s ease forwards; }
  @keyframes spin { to { transform: rotate(360deg); } }
  @keyframes fill { from { width: 0; } to { width: 100%; } }

  /* ========== NAVBAR ========== */
  nav {
    position: fixed; top: 0; left: 0; right: 0; z-index: 1000;
    padding: 16px 24px;
    display: flex; align-items: center; justify-content: space-between;
    background: rgba(255,255,255,0.85);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-bottom: 1px solid rgba(0,0,0,0.06);
    transition: background var(--transition);
  }
  [data-theme="dark"] nav { background: rgba(20,20,20,0.85); border-color: rgba(255,255,255,0.08); }
  .nav-logo { display: flex; align-items: center; gap: 10px; text-decoration: none; }
  .nav-logo-icon { font-size: 28px; }
  .nav-logo-text { font-weight: 800; font-size: 16px; color: var(--brown); line-height: 1.2; }
  .nav-logo-text span { color: var(--red); display: block; font-size: 11px; font-weight: 500; letter-spacing: 0.5px; }
  .nav-links { display: flex; align-items: center; gap: 28px; }
  .nav-links a { text-decoration: none; font-size: 14px; font-weight: 500; color: var(--text-muted); transition: color var(--transition); }
  .nav-links a:hover { color: var(--red); }
  .nav-actions { display: flex; align-items: center; gap: 12px; }
  .cart-btn {
    position: relative; padding: 8px 14px; border-radius: 99px;
    background: var(--yellow-light); border: none; cursor: pointer;
    font-size: 20px; transition: transform var(--transition);
  }
  .cart-btn:hover { transform: scale(1.1); }
  .cart-badge {
    position: absolute; top: -4px; right: -4px;
    width: 20px; height: 20px; border-radius: 50%;
    background: var(--red); color: white; font-size: 11px; font-weight: 700;
    display: flex; align-items: center; justify-content: center;
    display: none;
  }
  .dark-toggle {
    padding: 8px 12px; border-radius: 99px; border: 2px solid var(--yellow);
    background: transparent; cursor: pointer; font-size: 18px;
    transition: all var(--transition);
  }
  .dark-toggle:hover { background: var(--yellow); }
  .hamburger { display: none; flex-direction: column; gap: 5px; cursor: pointer; padding: 8px; }
  .hamburger span { width: 24px; height: 2px; background: var(--text); border-radius: 99px; transition: all var(--transition); }
  .mobile-menu {
    display: none; position: fixed; top: 70px; left: 0; right: 0;
    background: var(--white); padding: 24px; z-index: 999;
    box-shadow: var(--shadow-lg); border-bottom: 3px solid var(--yellow);
  }
  .mobile-menu.open { display: block; }
  .mobile-menu a { display: block; padding: 12px 0; text-decoration: none; font-size: 16px; font-weight: 600; color: var(--text); border-bottom: 1px solid rgba(0,0,0,0.06); }

  /* ========== HERO ========== */
  .hero {
    min-height: 100vh; padding: 100px 24px 60px;
    display: flex; align-items: center; justify-content: center;
    background: linear-gradient(135deg, var(--yellow-light) 0%, var(--brown-light) 50%, var(--red-light) 100%);
    position: relative; overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute; inset: 0;
    background: radial-gradient(ellipse at 70% 50%, rgba(245,166,35,0.15) 0%, transparent 60%);
  }
  .hero-bg-circles {
    position: absolute; inset: 0; overflow: hidden; pointer-events: none;
  }
  .hero-circle {
    position: absolute; border-radius: 50%;
    background: rgba(245,166,35,0.08);
  }
  .hero-circle:nth-child(1) { width: 400px; height: 400px; top: -100px; right: -100px; }
  .hero-circle:nth-child(2) { width: 200px; height: 200px; bottom: 50px; left: 50px; background: rgba(217,48,37,0.06); }
  .hero-circle:nth-child(3) { width: 300px; height: 300px; bottom: -80px; right: 200px; }
  .hero-content { max-width: 1100px; width: 100%; display: flex; align-items: center; gap: 60px; position: relative; }
  .hero-text { flex: 1; }
  .hero-tag {
    display: inline-flex; align-items: center; gap: 8px;
    background: var(--yellow); color: var(--brown);
    padding: 6px 16px; border-radius: 99px; font-size: 13px; font-weight: 700;
    margin-bottom: 24px; animation: slideInLeft 0.6s ease both;
  }
  .hero h1 {
    font-size: clamp(36px, 6vw, 64px); font-weight: 900; line-height: 1.1;
    color: var(--brown); margin-bottom: 16px;
    animation: slideInLeft 0.7s ease both;
  }
  .hero h1 span { color: var(--red); }
  .hero p {
    font-size: 17px; color: var(--text-muted); line-height: 1.7;
    max-width: 480px; margin-bottom: 36px;
    animation: slideInLeft 0.8s ease both;
  }
  .hero-btns { display: flex; gap: 14px; flex-wrap: wrap; animation: slideInLeft 0.9s ease both; }
  .btn-primary {
    padding: 14px 28px; border-radius: 99px;
    background: var(--red); color: white; border: none;
    font-family: 'Poppins', sans-serif; font-size: 15px; font-weight: 700;
    cursor: pointer; text-decoration: none; display: inline-block;
    box-shadow: 0 4px 20px rgba(217,48,37,0.4);
    transition: all var(--transition);
  }
  .btn-primary:hover { background: #c0271f; transform: translateY(-2px); box-shadow: 0 8px 30px rgba(217,48,37,0.5); }
  .btn-secondary {
    padding: 14px 28px; border-radius: 99px;
    background: transparent; color: var(--brown); border: 2px solid var(--yellow);
    font-family: 'Poppins', sans-serif; font-size: 15px; font-weight: 700;
    cursor: pointer; text-decoration: none; display: inline-block;
    transition: all var(--transition);
  }
  .btn-secondary:hover { background: var(--yellow); transform: translateY(-2px); }
  .hero-visual { flex: 1; display: flex; justify-content: center; align-items: center; animation: slideInRight 0.8s ease both; }
  .hero-bowl {
    width: 320px; height: 320px; border-radius: 50%;
    background: radial-gradient(circle at 35% 35%, #FFF3DC, #F5A623);
    display: flex; align-items: center; justify-content: center;
    font-size: 180px; line-height: 1;
    box-shadow: 0 20px 60px rgba(245,166,35,0.4);
    animation: float 3s ease-in-out infinite;
  }
  .hero-stats { display: flex; gap: 32px; margin-top: 40px; animation: slideInLeft 1s ease both; }
  .stat { text-align: left; }
  .stat-num { font-size: 28px; font-weight: 900; color: var(--red); }
  .stat-label { font-size: 12px; color: var(--text-muted); font-weight: 500; }

  @keyframes slideInLeft { from { opacity: 0; transform: translateX(-40px); } to { opacity: 1; transform: translateX(0); } }
  @keyframes slideInRight { from { opacity: 0; transform: translateX(40px); } to { opacity: 1; transform: translateX(0); } }
  @keyframes float { 0%,100% { transform: translateY(0); } 50% { transform: translateY(-16px); } }

  /* ========== SECTIONS ========== */
  section { padding: 80px 24px; }
  .container { max-width: 1100px; margin: 0 auto; }
  .section-header { text-align: center; margin-bottom: 56px; }
  .section-tag {
    display: inline-block; padding: 4px 16px; border-radius: 99px;
    background: var(--yellow-light); color: var(--yellow-dark);
    font-size: 12px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px;
    margin-bottom: 12px;
  }
  .section-title { font-size: clamp(28px, 4vw, 42px); font-weight: 800; color: var(--text); margin-bottom: 12px; }
  .section-title span { color: var(--red); }
  .section-sub { font-size: 16px; color: var(--text-muted); max-width: 500px; margin: 0 auto; line-height: 1.6; }

  /* ========== MENU ========== */
  #menu { background: var(--white); }
  .menu-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 24px; }
  .menu-card {
    background: var(--bg); border-radius: var(--radius);
    overflow: hidden; box-shadow: var(--shadow-sm);
    transition: all var(--transition); cursor: pointer;
    border: 2px solid transparent;
  }
  .menu-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-lg); border-color: var(--yellow); }
  .menu-img {
    height: 200px; display: flex; align-items: center; justify-content: center;
    font-size: 100px; background: linear-gradient(135deg, var(--yellow-light), var(--brown-light));
    position: relative; overflow: hidden;
  }
  .menu-img::after {
    content: ''; position: absolute; inset: 0;
    background: linear-gradient(to bottom, transparent 60%, rgba(0,0,0,0.08));
  }
  .menu-badge {
    position: absolute; top: 12px; right: 12px;
    background: var(--red); color: white;
    padding: 4px 10px; border-radius: 99px; font-size: 11px; font-weight: 700;
    z-index: 1;
  }
  .menu-body { padding: 20px; }
  .menu-name { font-size: 18px; font-weight: 700; color: var(--text); margin-bottom: 6px; }
  .menu-desc { font-size: 13px; color: var(--text-muted); line-height: 1.6; margin-bottom: 16px; }
  .menu-footer { display: flex; align-items: center; justify-content: space-between; }
  .menu-price { font-size: 22px; font-weight: 800; color: var(--red); }
  .qty-control { display: flex; align-items: center; gap: 10px; }
  .qty-btn {
    width: 32px; height: 32px; border-radius: 50%; border: none; cursor: pointer;
    font-size: 18px; font-weight: 700; transition: all var(--transition);
    display: flex; align-items: center; justify-content: center;
  }
  .qty-minus { background: var(--yellow-light); color: var(--brown); }
  .qty-plus { background: var(--yellow); color: var(--brown); }
  .qty-btn:hover { transform: scale(1.15); }
  .qty-num { font-size: 16px; font-weight: 700; min-width: 24px; text-align: center; color: var(--text); }

  /* ========== CART ========== */
  #cart { background: var(--bg); }
  .cart-container {
    background: var(--white); border-radius: var(--radius);
    padding: 32px; box-shadow: var(--shadow-md); min-height: 180px;
  }
  .cart-empty { text-align: center; padding: 40px; color: var(--text-muted); }
  .cart-empty .empty-icon { font-size: 56px; margin-bottom: 12px; }
  .cart-item {
    display: flex; align-items: center; gap: 16px; padding: 14px 0;
    border-bottom: 1px solid rgba(0,0,0,0.06);
    animation: slideIn 0.3s ease;
  }
  @keyframes slideIn { from { opacity: 0; transform: translateY(-10px); } to { opacity: 1; transform: translateY(0); } }
  .cart-item-icon { font-size: 36px; }
  .cart-item-name { flex: 1; font-weight: 600; font-size: 15px; }
  .cart-item-meta { font-size: 12px; color: var(--text-muted); }
  .cart-item-price { font-weight: 700; color: var(--red); font-size: 15px; }
  .cart-item-del {
    width: 30px; height: 30px; border-radius: 50%;
    background: var(--red-light); color: var(--red); border: none; cursor: pointer;
    font-size: 16px; transition: all var(--transition);
  }
  .cart-item-del:hover { background: var(--red); color: white; transform: scale(1.1); }
  .cart-total {
    display: flex; justify-content: space-between; align-items: center;
    padding: 20px 0 0; margin-top: 4px;
    border-top: 2px solid var(--yellow);
  }
  .cart-total-label { font-size: 16px; font-weight: 700; }
  .cart-total-amount { font-size: 26px; font-weight: 900; color: var(--red); }

  /* ========== ORDER FORM ========== */
  #order { background: var(--white); }
  .order-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 40px; align-items: start; }
  .form-group { margin-bottom: 20px; }
  .form-label { display: block; font-size: 13px; font-weight: 600; color: var(--text-muted); margin-bottom: 8px; text-transform: uppercase; letter-spacing: 0.5px; }
  .form-input, .form-textarea {
    width: 100%; padding: 14px 16px; border-radius: var(--radius-sm);
    border: 2px solid rgba(0,0,0,0.1); background: var(--bg);
    font-family: 'Poppins', sans-serif; font-size: 15px; color: var(--text);
    transition: all var(--transition); outline: none;
  }
  [data-theme="dark"] .form-input, [data-theme="dark"] .form-textarea { border-color: rgba(255,255,255,0.12); }
  .form-input:focus, .form-textarea:focus { border-color: var(--yellow); box-shadow: 0 0 0 4px rgba(245,166,35,0.15); }
  .form-input.error, .form-textarea.error { border-color: var(--red); box-shadow: 0 0 0 4px rgba(217,48,37,0.1); }
  .form-error { font-size: 12px; color: var(--red); margin-top: 4px; display: none; }
  .form-error.show { display: block; }
  .form-textarea { height: 100px; resize: vertical; }
  .order-summary {
    background: var(--bg); border-radius: var(--radius);
    padding: 24px; border: 2px solid var(--yellow-light);
  }
  .order-summary h3 { font-size: 16px; font-weight: 700; margin-bottom: 16px; color: var(--brown); }
  .btn-wa {
    width: 100%; padding: 16px; border-radius: 99px;
    background: #25D366; color: white; border: none;
    font-family: 'Poppins', sans-serif; font-size: 16px; font-weight: 700;
    cursor: pointer; display: flex; align-items: center; justify-content: center; gap: 10px;
    transition: all var(--transition); margin-top: 16px;
    box-shadow: 0 4px 20px rgba(37,211,102,0.4);
  }
  .btn-wa:hover { background: #1ebe59; transform: translateY(-2px); box-shadow: 0 8px 30px rgba(37,211,102,0.5); }
  .btn-wa:disabled { opacity: 0.5; cursor: not-allowed; transform: none; }

  /* ========== QRIS ========== */
  #payment { background: var(--brown-light); }
  .qris-box {
    max-width: 420px; margin: 0 auto; text-align: center;
    background: var(--white); border-radius: var(--radius);
    padding: 40px; box-shadow: var(--shadow-md);
  }
  .qris-frame {
    width: 220px; height: 220px; border-radius: var(--radius);
    background: linear-gradient(135deg, var(--yellow-light), #fff);
    border: 3px dashed var(--yellow); margin: 0 auto 20px;
    display: flex; align-items: center; justify-content: center;
    font-size: 80px; position: relative;
  }
  .qris-label {
    position: absolute; bottom: -12px; left: 50%; transform: translateX(-50%);
    background: var(--yellow); color: var(--brown); font-size: 11px; font-weight: 700;
    padding: 3px 12px; border-radius: 99px; white-space: nowrap;
  }
  .qris-info { font-size: 14px; color: var(--text-muted); margin-bottom: 20px; }
  .btn-upload {
    padding: 12px 24px; border-radius: 99px;
    background: var(--yellow); color: var(--brown); border: none;
    font-family: 'Poppins', sans-serif; font-size: 14px; font-weight: 700;
    cursor: pointer; transition: all var(--transition);
  }
  .btn-upload:hover { background: var(--yellow-dark); transform: translateY(-1px); }
  #proof-input { display: none; }
  #proof-name { font-size: 12px; color: var(--text-muted); margin-top: 10px; }

  /* ========== TESTIMONI ========== */
  #testimonials { background: var(--white); }
  .testi-slider { overflow: hidden; position: relative; }
  .testi-track { display: flex; transition: transform 0.5s ease; }
  .testi-card {
    min-width: 100%; padding: 0 8px;
  }
  .testi-inner {
    background: var(--bg); border-radius: var(--radius);
    padding: 36px; text-align: center; border: 2px solid var(--yellow-light);
    max-width: 640px; margin: 0 auto;
  }
  .testi-stars { font-size: 24px; margin-bottom: 16px; color: var(--yellow); }
  .testi-text { font-size: 18px; font-style: italic; color: var(--text); line-height: 1.7; margin-bottom: 20px; font-weight: 500; }
  .testi-avatar { font-size: 40px; margin-bottom: 8px; }
  .testi-name { font-weight: 700; font-size: 15px; color: var(--brown); }
  .testi-role { font-size: 13px; color: var(--text-muted); }
  .testi-dots { display: flex; justify-content: center; gap: 8px; margin-top: 24px; }
  .testi-dot {
    width: 8px; height: 8px; border-radius: 99px; cursor: pointer;
    background: rgba(0,0,0,0.15); transition: all var(--transition);
  }
  .testi-dot.active { width: 24px; background: var(--yellow); }

  /* ========== GALLERY ========== */
  #gallery { background: var(--bg); }
  .gallery-grid {
    display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 16px;
  }
  .gallery-item {
    height: 220px; border-radius: var(--radius);
    background: linear-gradient(135deg, var(--yellow-light), var(--brown-light));
    display: flex; align-items: center; justify-content: center;
    font-size: 80px; cursor: pointer;
    overflow: hidden; position: relative;
    transition: all var(--transition);
  }
  .gallery-item:hover { transform: scale(1.04); box-shadow: var(--shadow-lg); }
  .gallery-item::after {
    content: '🔍'; position: absolute; inset: 0;
    background: rgba(0,0,0,0.4); display: flex; align-items: center; justify-content: center;
    font-size: 32px; opacity: 0; transition: opacity var(--transition);
  }
  .gallery-item:hover::after { opacity: 1; }
  .gallery-item:first-child { grid-row: span 2; height: 100%; min-height: 456px; }

  /* ========== FOOTER ========== */
  footer {
    background: var(--brown); color: white; padding: 60px 24px 24px;
  }
  .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr; gap: 40px; margin-bottom: 40px; }
  .footer-brand-icon { font-size: 40px; margin-bottom: 12px; }
  .footer-brand-name { font-size: 18px; font-weight: 800; margin-bottom: 8px; }
  .footer-brand-desc { font-size: 14px; opacity: 0.7; line-height: 1.6; }
  .footer-col h4 { font-size: 13px; text-transform: uppercase; letter-spacing: 1px; opacity: 0.6; margin-bottom: 16px; }
  .footer-col p, .footer-col a {
    display: block; font-size: 14px; opacity: 0.85; margin-bottom: 10px;
    text-decoration: none; color: white; transition: opacity var(--transition);
  }
  .footer-col a:hover { opacity: 1; text-decoration: underline; }
  .footer-bottom { border-top: 1px solid rgba(255,255,255,0.15); padding-top: 24px; display: flex; justify-content: space-between; align-items: center; font-size: 13px; opacity: 0.6; flex-wrap: wrap; gap: 8px; }

  /* ========== FLOATING BUTTONS ========== */
  .float-wa {
    position: fixed; bottom: 80px; right: 20px; z-index: 900;
    width: 56px; height: 56px; border-radius: 50%;
    background: #25D366; color: white; border: none; cursor: pointer;
    font-size: 28px; box-shadow: 0 4px 20px rgba(37,211,102,0.5);
    transition: all var(--transition); display: flex; align-items: center; justify-content: center;
    text-decoration: none;
  }
  .float-wa:hover { transform: scale(1.1); box-shadow: 0 8px 30px rgba(37,211,102,0.6); }
  .back-top {
    position: fixed; bottom: 20px; right: 20px; z-index: 900;
    width: 44px; height: 44px; border-radius: 50%;
    background: var(--yellow); color: var(--brown); border: none; cursor: pointer;
    font-size: 20px; box-shadow: var(--shadow-md);
    transition: all var(--transition);
    opacity: 0; pointer-events: none;
  }
  .back-top.show { opacity: 1; pointer-events: all; }
  .back-top:hover { transform: translateY(-3px); }

  /* ========== SCROLL REVEAL ========== */
  .reveal { opacity: 0; transform: translateY(30px); transition: opacity 0.6s ease, transform 0.6s ease; }
  .reveal.revealed { opacity: 1; transform: translateY(0); }

  /* ========== RESPONSIVE ========== */
  @media (max-width: 768px) {
    .nav-links { display: none; }
    .hamburger { display: flex; }
    .hero-content { flex-direction: column; text-align: center; gap: 40px; }
    .hero-text .hero-btns { justify-content: center; }
    .hero-stats { justify-content: center; }
    .hero-bowl { width: 220px; height: 220px; font-size: 120px; }
    .order-grid { grid-template-columns: 1fr; }
    .footer-grid { grid-template-columns: 1fr; }
    .footer-bottom { flex-direction: column; text-align: center; }
    .gallery-item:first-child { grid-row: span 1; height: 220px; }
    .hero p { max-width: 100%; }
    section { padding: 60px 16px; }
  }
  @media (max-width: 480px) {
    .menu-grid { grid-template-columns: 1fr; }
    .gallery-grid { grid-template-columns: 1fr 1fr; }
  }
</style>
</head>
<body>

<!-- LOADING -->
<div id="loading">
  <div class="loading-bowl">🍜</div>
  <div class="loading-text">Menyiapkan yang enak...</div>
  <div class="loading-bar"><div class="loading-fill"></div></div>
</div>

<!-- NAVBAR -->
<nav>
  <a class="nav-logo" href="#">
    <span class="nav-logo-icon">🍜</span>
    <div class="nav-logo-text">
      Mie Ayam & Pangsit
      <span>MANTAP ⭐</span>
    </div>
  </a>
  <div class="nav-links">
    <a href="#menu">Menu</a>
    <a href="#cart">Keranjang</a>
    <a href="#order">Pesan</a>
    <a href="#payment">Pembayaran</a>
    <a href="#testimonials">Ulasan</a>
  </div>
  <div class="nav-actions">
    <button class="cart-btn" onclick="scrollToCart()">
      🛒<span class="cart-badge" id="cart-badge">0</span>
    </button>
    <button class="dark-toggle" onclick="toggleDark()" id="dark-btn">🌙</button>
    <div class="hamburger" onclick="toggleMenu()">
      <span></span><span></span><span></span>
    </div>
  </div>
</nav>

<!-- MOBILE MENU -->
<div class="mobile-menu" id="mobile-menu">
  <a href="#menu" onclick="closeMenu()">🍜 Menu</a>
  <a href="#cart" onclick="closeMenu()">🛒 Keranjang</a>
  <a href="#order" onclick="closeMenu()">📋 Pesan</a>
  <a href="#payment" onclick="closeMenu()">💳 Pembayaran</a>
  <a href="#testimonials" onclick="closeMenu()">⭐ Ulasan</a>
  <a href="#gallery" onclick="closeMenu()">🖼️ Galeri</a>
</div>

<!-- HERO -->
<section class="hero" id="home">
  <div class="hero-bg-circles">
    <div class="hero-circle"></div>
    <div class="hero-circle"></div>
    <div class="hero-circle"></div>
  </div>
  <div class="hero-content">
    <div class="hero-text">
      <div class="hero-tag">🔥 Baru Buka Hari Ini!</div>
      <h1>Mie Ayam Enak<br><span>Harga Merakyat</span></h1>
      <p>Porsi mantap, rasa nikmat, pesan langsung dari website. Kuah gurih bikin nagih sejak suapan pertama!</p>
      <div class="hero-btns">
        <a href="#order" class="btn-primary">🛍️ Pesan Sekarang</a>
        <a href="#menu" class="btn-secondary">📋 Lihat Menu</a>
      </div>
      <div class="hero-stats">
        <div class="stat">
          <div class="stat-num">500+</div>
          <div class="stat-label">Pelanggan Puas</div>
        </div>
        <div class="stat">
          <div class="stat-num">4.9⭐</div>
          <div class="stat-label">Rating</div>
        </div>
        <div class="stat">
          <div class="stat-num">3 Tahun</div>
          <div class="stat-label">Berpengalaman</div>
        </div>
      </div>
    </div>
    <div class="hero-visual">
      <div class="hero-bowl">🍜</div>
    </div>
  </div>
</section>

<!-- MENU -->
<section id="menu">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">🍜 Menu Kami</div>
      <h2 class="section-title">Pilihan <span>Menu Mantap</span></h2>
      <p class="section-sub">Semua dibuat fresh setiap hari dengan bahan pilihan berkualitas</p>
    </div>
    <div class="menu-grid" id="menu-grid">
      <!-- Generated by JS -->
    </div>
  </div>
</section>

<!-- CART -->
<section id="cart">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">🛒 Keranjang</div>
      <h2 class="section-title">Pesanan <span>Saya</span></h2>
    </div>
    <div class="cart-container reveal">
      <div id="cart-content">
        <div class="cart-empty">
          <div class="empty-icon">🛒</div>
          <p>Keranjang masih kosong.<br>Yuk pilih menu dulu!</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ORDER FORM -->
<section id="order">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">📋 Form Pemesanan</div>
      <h2 class="section-title">Isi Data <span>Pengiriman</span></h2>
    </div>
    <div class="order-grid">
      <div class="reveal">
        <div class="form-group">
          <label class="form-label">Nama Lengkap *</label>
          <input class="form-input" id="f-name" type="text" placeholder="Contoh: Budi Santoso">
          <div class="form-error" id="e-name">Nama harus diisi</div>
        </div>
        <div class="form-group">
          <label class="form-label">Nomor WhatsApp *</label>
          <input class="form-input" id="f-phone" type="tel" placeholder="Contoh: 08123456789">
          <div class="form-error" id="e-phone">Nomor WhatsApp harus diisi</div>
        </div>
        <div class="form-group">
          <label class="form-label">Alamat Lengkap *</label>
          <textarea class="form-textarea" id="f-address" placeholder="Masukkan alamat lengkap termasuk RT/RW dan patokan..."></textarea>
          <div class="form-error" id="e-address">Alamat harus diisi</div>
        </div>
        <div class="form-group">
          <label class="form-label">Catatan Pesanan</label>
          <textarea class="form-textarea" id="f-note" placeholder="Contoh: pedas sedang, kuah terpisah, dll..."></textarea>
        </div>
      </div>
      <div class="reveal">
        <div class="order-summary">
          <h3>📋 Ringkasan Pesanan</h3>
          <div id="summary-content">
            <p style="color: var(--text-muted); font-size: 14px;">Belum ada item dipilih</p>
          </div>
          <div style="margin-top: 16px; padding-top: 16px; border-top: 2px dashed var(--yellow);">
            <div style="display: flex; justify-content: space-between; font-weight: 700; font-size: 16px;">
              <span>Total</span>
              <span style="color: var(--red);" id="summary-total">Rp0</span>
            </div>
          </div>
          <button class="btn-wa" onclick="checkout()">
            <span style="font-size: 20px;">💬</span>
            Pesan via WhatsApp
          </button>
          <p style="text-align: center; font-size: 11px; color: var(--text-muted); margin-top: 10px;">
            Akan diarahkan ke WhatsApp penjual
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- PAYMENT -->
<section id="payment">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">💳 Pembayaran</div>
      <h2 class="section-title">Bayar via <span>QRIS</span></h2>
      <p class="section-sub">Scan QR di bawah ini, lalu upload bukti bayar</p>
    </div>
    <div class="qris-box reveal">
      <div class="qris-frame">
        📱
        <div class="qris-label">QRIS</div>
      </div>
      <p style="font-size: 20px; font-weight: 800; color: var(--brown); margin-bottom: 4px;">Mie Ayam Mantap</p>
      <p class="qris-info">Scan dengan aplikasi e-wallet atau m-banking apapun</p>
      <button class="btn-upload" onclick="document.getElementById('proof-input').click()">
        📤 Upload Bukti Bayar
      </button>
      <input type="file" id="proof-input" accept="image/*" onchange="handleProof(this)">
      <p id="proof-name"></p>
      <div style="margin-top: 20px; padding: 14px; background: var(--yellow-light); border-radius: var(--radius-sm);">
        <p style="font-size: 13px; color: var(--brown); font-weight: 600;">💡 Pembayaran bisa via QRIS</p>
        <p style="font-size: 12px; color: var(--text-muted); margin-top: 4px;">Transfer dulu, pesanan langsung diproses!</p>
      </div>
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section id="testimonials">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">⭐ Ulasan</div>
      <h2 class="section-title">Kata <span>Pelanggan</span></h2>
    </div>
    <div class="testi-slider reveal">
      <div class="testi-track" id="testi-track">
        <div class="testi-card">
          <div class="testi-inner">
            <div class="testi-stars">⭐⭐⭐⭐⭐</div>
            <p class="testi-text">"Murah tapi rasanya enak banget! Udah langganan hampir tiap hari. Kuahnya gurih, mienya kenyal. Recommended banget!"</p>
            <div class="testi-avatar">👩</div>
            <div class="testi-name">Sarah Putri</div>
            <div class="testi-role">Pelanggan Setia</div>
          </div>
        </div>
        <div class="testi-card">
          <div class="testi-inner">
            <div class="testi-stars">⭐⭐⭐⭐⭐</div>
            <p class="testi-text">"Mie ayam favorit saya! Rasa ayamnya meresap banget, bumbunya pas, porsinya juga nggak pelit. Harganya ramah di kantong!"</p>
            <div class="testi-avatar">👨</div>
            <div class="testi-name">Rizky Pratama</div>
            <div class="testi-role">Pelanggan Baru</div>
          </div>
        </div>
        <div class="testi-card">
          <div class="testi-inner">
            <div class="testi-stars">⭐⭐⭐⭐⭐</div>
            <p class="testi-text">"Porsinya mantap, ga bikin lapar lagi! Pangsitnya lembut dan isi, es tehnya juga segar. Sempurna untuk makan siang!"</p>
            <div class="testi-avatar">👩‍💼</div>
            <div class="testi-name">Dewi Anggraini</div>
            <div class="testi-role">Pelanggan Setia</div>
          </div>
        </div>
        <div class="testi-card">
          <div class="testi-inner">
            <div class="testi-stars">⭐⭐⭐⭐⭐</div>
            <p class="testi-text">"Pesan online gampang banget, langsung ke WhatsApp. Pengirimannya cepat, masih panas waktu nyampe. Auto order lagi!"</p>
            <div class="testi-avatar">👨‍💻</div>
            <div class="testi-name">Andi Kusuma</div>
            <div class="testi-role">Order Online</div>
          </div>
        </div>
      </div>
      <div class="testi-dots" id="testi-dots"></div>
    </div>
  </div>
</section>

<!-- GALLERY -->
<section id="gallery">
  <div class="container">
    <div class="section-header reveal">
      <div class="section-tag">🖼️ Galeri</div>
      <h2 class="section-title">Lihat Lebih <span>Dekat</span></h2>
    </div>
    <div class="gallery-grid reveal">
      <div class="gallery-item" style="font-size: 100px; background: linear-gradient(135deg, #FFF3DC, #FFE0B2);">🍜</div>
      <div class="gallery-item" style="background: linear-gradient(135deg, #FFF3DC, #FFCCBC);">🥟</div>
      <div class="gallery-item" style="background: linear-gradient(135deg, #E3F2FD, #B3E5FC);">🧊</div>
      <div class="gallery-item" style="background: linear-gradient(135deg, #F3E5F5, #E1BEE7);">🍲</div>
      <div class="gallery-item" style="background: linear-gradient(135deg, #E8F5E9, #C8E6C9);">🌿</div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="footer-brand-icon">🍜</div>
        <div class="footer-brand-name">Mie Ayam & Mie Pangsit Mantap</div>
        <p class="footer-brand-desc">Kuliner mie ayam dengan cita rasa autentik, porsi mantap, harga ramah di kantong. Melayani dengan sepenuh hati sejak 2021.</p>
      </div>
      <div>
        <h4>Info Usaha</h4>
        <p>📍 Bangil, Jawa Timur</p>
        <p>⏰ Buka: 07.00 – 21.00</p>
        <p>📅 Senin – Minggu</p>
        <a href="https://wa.me/6282332670266">📱 082332670266</a>
      </div>
      <div>
        <h4>Sosial Media</h4>
        <a href="https://wa.me/6282332670266">💬 WhatsApp</a>
        <a href="#">📸 Instagram</a>
        <a href="#">👍 Facebook</a>
        <a href="#">🎵 TikTok</a>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© 2025 Mie Ayam & Mie Pangsit Mantap. All rights reserved.</span>
      <span>Made with ❤️ untuk pelanggan setia kami</span>
    </div>
  </div>
</footer>

<!-- FLOATING BUTTONS -->
<a class="float-wa" href="https://wa.me/6282332670266" target="_blank" title="Chat WhatsApp">💬</a>
<button class="back-top" id="back-top" onclick="window.scrollTo({top:0,behavior:'smooth'})">↑</button>

<script>
// ===== DATA =====
const MENUS = [
  { id: 1, name: 'Mie Ayam', price: 7000, icon: '🍜', desc: 'Mie gurih dengan topping ayam lezat dan kuah nikmat. Dibuat fresh setiap hari!', badge: 'Terlaris' },
  { id: 2, name: 'Mie Pangsit', price: 5000, icon: '🥟', desc: 'Pangsit lembut dengan rasa gurih bikin nagih. Kulit tipis, isian melimpah!', badge: 'Favorit' },
  { id: 3, name: 'Es Teh', price: 3000, icon: '🧊', desc: 'Es teh manis segar pelepas dahaga. Teh berkualitas, es kristal, manis pas!', badge: 'Segar' },
];
const WA_NUMBER = '6282332670266';
let cart = {};

// ===== LOADING =====
window.addEventListener('load', () => {
  setTimeout(() => { document.getElementById('loading').classList.add('hide'); }, 1600);
});

// ===== DARK MODE =====
function toggleDark() {
  const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
  document.documentElement.setAttribute('data-theme', isDark ? '' : 'dark');
  document.getElementById('dark-btn').textContent = isDark ? '🌙' : '☀️';
}

// ===== MOBILE MENU =====
function toggleMenu() { document.getElementById('mobile-menu').classList.toggle('open'); }
function closeMenu() { document.getElementById('mobile-menu').classList.remove('open'); }

// ===== MENU RENDER =====
function renderMenu() {
  const grid = document.getElementById('menu-grid');
  grid.innerHTML = MENUS.map(m => `
    <div class="menu-card reveal">
      <div class="menu-img">
        ${m.icon}
        <div class="menu-badge">${m.badge}</div>
      </div>
      <div class="menu-body">
        <div class="menu-name">${m.name}</div>
        <div class="menu-desc">${m.desc}</div>
        <div class="menu-footer">
          <div class="menu-price">Rp${m.price.toLocaleString('id-ID')}</div>
          <div class="qty-control">
            <button class="qty-btn qty-minus" onclick="changeQty(${m.id}, -1)">−</button>
            <span class="qty-num" id="qty-${m.id}">${cart[m.id] || 0}</span>
            <button class="qty-btn qty-plus" onclick="changeQty(${m.id}, 1)">+</button>
          </div>
        </div>
      </div>
    </div>
  `).join('');
  observeReveal();
}

// ===== CART LOGIC =====
function changeQty(id, delta) {
  cart[id] = Math.max(0, (cart[id] || 0) + delta);
  document.getElementById('qty-' + id).textContent = cart[id];
  renderCart();
  updateSummary();
  updateBadge();
}

function removeItem(id) {
  delete cart[id];
  const qtyEl = document.getElementById('qty-' + id);
  if (qtyEl) qtyEl.textContent = 0;
  renderCart();
  updateSummary();
  updateBadge();
}

function renderCart() {
  const items = MENUS.filter(m => cart[m.id] > 0);
  const el = document.getElementById('cart-content');
  if (!items.length) {
    el.innerHTML = `<div class="cart-empty"><div class="empty-icon">🛒</div><p>Keranjang masih kosong.<br>Yuk pilih menu dulu!</p></div>`;
    return;
  }
  const total = items.reduce((s, m) => s + m.price * cart[m.id], 0);
  el.innerHTML = items.map(m => `
    <div class="cart-item">
      <span class="cart-item-icon">${m.icon}</span>
      <div style="flex:1">
        <div class="cart-item-name">${m.name}</div>
        <div class="cart-item-meta">${cart[m.id]}x × Rp${m.price.toLocaleString('id-ID')}</div>
      </div>
      <div class="cart-item-price">Rp${(m.price * cart[m.id]).toLocaleString('id-ID')}</div>
      <button class="cart-item-del" onclick="removeItem(${m.id})">✕</button>
    </div>
  `).join('') + `
    <div class="cart-total">
      <span class="cart-total-label">Total Pesanan</span>
      <span class="cart-total-amount">Rp${total.toLocaleString('id-ID')}</span>
    </div>`;
}

function updateSummary() {
  const items = MENUS.filter(m => cart[m.id] > 0);
  const total = items.reduce((s, m) => s + m.price * cart[m.id], 0);
  const el = document.getElementById('summary-content');
  if (!items.length) {
    el.innerHTML = '<p style="color:var(--text-muted);font-size:14px">Belum ada item dipilih</p>';
  } else {
    el.innerHTML = items.map(m => `
      <div style="display:flex;justify-content:space-between;font-size:14px;padding:4px 0">
        <span>${m.icon} ${m.name} ×${cart[m.id]}</span>
        <span style="font-weight:600">Rp${(m.price*cart[m.id]).toLocaleString('id-ID')}</span>
      </div>
    `).join('');
  }
  document.getElementById('summary-total').textContent = 'Rp' + total.toLocaleString('id-ID');
}

function updateBadge() {
  const total = Object.values(cart).reduce((s, v) => s + v, 0);
  const badge = document.getElementById('cart-badge');
  badge.textContent = total;
  badge.style.display = total > 0 ? 'flex' : 'none';
}

function scrollToCart() {
  document.getElementById('cart').scrollIntoView({ behavior: 'smooth' });
}

// ===== CHECKOUT =====
function checkout() {
  const name = document.getElementById('f-name').value.trim();
  const phone = document.getElementById('f-phone').value.trim();
  const address = document.getElementById('f-address').value.trim();
  const note = document.getElementById('f-note').value.trim();
  let valid = true;

  const show = (id, show) => {
    document.getElementById(id).classList.toggle('show', show);
  };
  const err = (inputId, errId, condition) => {
    document.getElementById(inputId).classList.toggle('error', condition);
    show(errId, condition);
    if (condition) valid = false;
  };

  err('f-name', 'e-name', !name);
  err('f-phone', 'e-phone', !phone);
  err('f-address', 'e-address', !address);

  const items = MENUS.filter(m => cart[m.id] > 0);
  if (!items.length) { alert('Pilih menu terlebih dahulu!'); return; }
  if (!valid) { document.getElementById('order').scrollIntoView({ behavior: 'smooth' }); return; }

  const total = items.reduce((s, m) => s + m.price * cart[m.id], 0);
  const orderLines = items.map(m => `- ${cart[m.id]}x ${m.name}`).join('\n');

  const msg = `Halo, saya ingin memesan:\n\n${orderLines}\n\nTotal: Rp${total.toLocaleString('id-ID')}\n\nNama: ${name}\nNo. HP: ${phone}\nAlamat: ${address}${note ? '\nCatatan: ' + note : ''}`;

  window.open('https://wa.me/' + WA_NUMBER + '?text=' + encodeURIComponent(msg), '_blank');
}

// ===== TESTIMONIALS =====
function initTestimonials() {
  const track = document.getElementById('testi-track');
  const dots = document.getElementById('testi-dots');
  const cards = track.children.length;
  let current = 0;

  for (let i = 0; i < cards; i++) {
    const dot = document.createElement('div');
    dot.className = 'testi-dot' + (i === 0 ? ' active' : '');
    dot.onclick = () => goTo(i);
    dots.appendChild(dot);
  }

  function goTo(i) {
    current = i;
    track.style.transform = `translateX(-${i * 100}%)`;
    document.querySelectorAll('.testi-dot').forEach((d, idx) => {
      d.classList.toggle('active', idx === i);
    });
  }

  setInterval(() => goTo((current + 1) % cards), 4000);
}

// ===== SCROLL REVEAL =====
function observeReveal() {
  const els = document.querySelectorAll('.reveal:not(.revealed)');
  const obs = new IntersectionObserver((entries) => {
    entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add('revealed'); } });
  }, { threshold: 0.1 });
  els.forEach(el => obs.observe(el));
}

// ===== BACK TO TOP =====
window.addEventListener('scroll', () => {
  document.getElementById('back-top').classList.toggle('show', window.scrollY > 300);
});

// ===== QRIS PROOF =====
function handleProof(input) {
  const file = input.files[0];
  if (file) {
    document.getElementById('proof-name').textContent = '✅ ' + file.name + ' berhasil diupload';
  }
}

// ===== INIT =====
renderMenu();
updateSummary();
initTestimonials();
observeReveal();
</script>
</body>
</html>
